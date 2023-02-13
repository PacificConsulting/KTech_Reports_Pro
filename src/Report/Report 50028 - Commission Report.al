report 50028 "Commission Report"
{
    // version PCPL-25

    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\Commission Report.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            RequestFilterFields = "No.", "Sell-to Customer No.", "Salesperson Code", "Posting Date";
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(SelltoCustomerNo_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Customer No.")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            column(PDate; PDate)
            {
            }
            column(Amt; Amt)
            {
            }
            column(CheqNo; CheqNo)
            {
            }
            column(TotalAmt; TotalAmt)
            {
            }
            column(custName; custName)
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = WHERE("Type" = FILTER('<> G/L Account'));
                column(Type_SalesInvoiceLine; "Sales Invoice Line".Type)
                {
                }
                column(No_SalesInvoiceLine; "Sales Invoice Line"."No.")
                {
                }
                column(TDSTCSAmount_SalesInvoiceLine; TCSAmt)//"Sales Invoice Line"."TDS/TCS Amount")
                {
                }
                column(Description_SalesInvoiceLine; "Sales Invoice Line".Description)
                {
                }
                column(UnitofMeasure_SalesInvoiceLine; "Sales Invoice Line"."Unit of Measure")
                {
                }
                column(Quantity_SalesInvoiceLine; "Sales Invoice Line".Quantity)
                {
                }
                column(UnitPrice_SalesInvoiceLine; "Sales Invoice Line"."Unit Price")
                {
                }
                column(Amount_SalesInvoiceLine; "Sales Invoice Line".Amount)
                {
                }
                column(GSTBaseAmount_SalesInvoiceLine; GSTBaseAmtLineWise)//"Sales Invoice Line"."GST Base Amount")
                {
                }
                column(CommissionPercentage_SalesInvoiceLine; "Sales Invoice Line"."Commission Percentage")
                {
                }
                column(CommissionAmount_SalesInvoiceLine; "Sales Invoice Line"."Commission Amount")
                {
                }
                trigger OnAfterGetRecord()
                begin
                    //<<PCPL/NSW/EINV 052522
                    if SalesInvLine.Get("Sales Invoice Line"."Document No.", "Sales Invoice Line"."Line No.") then
                        TaxRecordID := "Sales Invoice Line".RecordId();

                    GetGSTBaseAmtLineWise(TaxRecordID, ComponentJobject);
                    //>>PCPL/NSW/EINV 052522
                end;
            }

            trigger OnAfterGetRecord();
            begin
                IF recCust.GET("Sell-to Customer No.") THEN BEGIN
                    custName := recCust.Name;
                END;

                CLEAR(Amt);
                CLEAR(PDate);
                CLEAR(CheqNo);
                CustLedgerEntry.RESET;
                CustLedgerEntry.SETRANGE(CustLedgerEntry."Document No.", "Sales Invoice Header"."No.");
                IF CustLedgerEntry.FIND('-') THEN BEGIN
                    CheqNo := CustLedgerEntry."External Document No.";

                    DetailedCustLedgEntry.RESET;
                    DetailedCustLedgEntry.SETRANGE(DetailedCustLedgEntry."Cust. Ledger Entry No.", CustLedgerEntry."Entry No.");
                    DetailedCustLedgEntry.SETRANGE(DetailedCustLedgEntry."Document Type", DetailedCustLedgEntry."Document Type"::Payment);
                    IF DetailedCustLedgEntry.FIND('-') THEN BEGIN
                        PDate := DetailedCustLedgEntry."Posting Date";
                        Amt := ABS(DetailedCustLedgEntry.Amount);
                    END;
                END;
                GetStatisticsAmount("Sales Invoice Header", TCSAmt, TCSPercent);

                TotalAmt := TotalAmt + ABS(Amt);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        TaxRecordID: RecordId;
        GSTBaseAmtLineWise: Decimal;
        ScriptDatatypeMgmt: Codeunit "Script Data Type Mgmt.";
        GSTBaseAmt: Decimal;
        ComponentJobject: JsonObject;
        SIH: Record 112;
        SalesInvLine: Record 113;
        CompanyInformation: Record 79;
        recCust: Record 18;
        Sr: Integer;
        RecItem: Record 27;
        Desc: Text[50];
        GLAcc: Record 15;
        custName: Text[50];
        CustLedgerEntry: Record 21;
        PDate: Date;
        Amt: Decimal;
        CheqNo: Code[35];
        DetailedCustLedgEntry: Record 379;
        TotalAmt: Decimal;
        TCSPercent: Decimal;
        TCSAMT: Decimal;

    procedure GetStatisticsAmount(
       SalesHeader: Record "Sales Invoice Header";
       var TCSAmount: Decimal; var TCSPercent: Decimal)
    var
        SalesLine: Record "Sales Invoice Line";
        TCSManagement: Codeunit "TCS Management";
        i: Integer;
        RecordIDList: List of [RecordID];
    begin
        Clear(TCSAmount);
        Clear(TCSPercent);

        SalesLine.SetRange("Document no.", SalesHeader."No.");
        if SalesLine.FindSet() then
            repeat
                RecordIDList.Add(SalesLine.RecordId());
            until SalesLine.Next() = 0;

        for i := 1 to RecordIDList.Count() do begin
            TCSAmount += GetTCSAmount(RecordIDList.Get(i));
            TCSPercent += GetTCSPercent(RecordIDList.Get(i));
        end;

        TCSAmount := TCSManagement.RoundTCSAmount(TCSAmount);
    end;

    local procedure GetTCSAmount(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TCSSetup: Record "TCS Setup";
    begin
        if not TCSSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        TaxTransactionValue.SetRange("Tax Type", TCSSetup."Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Amount);

        exit(TaxTransactionValue.Amount);
    end;

    local procedure GetTCSPercent(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TCSSetup: Record "TCS Setup";
    begin
        if not TCSSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        TaxTransactionValue.SetRange("Tax Type", TCSSetup."Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Percent);

        exit(TaxTransactionValue.Percent);
    end;

    local procedure GetGSTBaseAmtLinewise(TaxRecordID: RecordId; var JObject: JsonObject)
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TaxTypeObjHelper: Codeunit "Tax Type Object Helper";
        ComponentAmt: Decimal;
        JArray: JsonArray;
        ComponentJObject: JsonObject;
    //GSTBaseAmtLineWise: Decimal;
    begin
        if not GuiAllowed then
            exit;

        TaxTransactionValue.SetFilter("Tax Record ID", '%1', TaxRecordID);
        TaxTransactionValue.SetFilter("Value Type", '%1', TaxTransactionValue."Value Type"::Component);
        TaxTransactionValue.SetRange("Visible on Interface", true);
        TaxTransactionValue.SetRange("Tax Type", 'GST');
        TaxTransactionValue.SetRange("Value ID", 10);
        if TaxTransactionValue.FindFirst() then begin
            //IF TaxTransactionValue.FindSet() then
            //  repeat
            Clear(ComponentJObject);
            ComponentJObject.Add('Component', TaxTransactionValue.GetAttributeColumName());
            ComponentJObject.Add('Percent', ScriptDatatypeMgmt.ConvertXmlToLocalFormat(format(TaxTransactionValue.Percent, 0, 9), "Symbol Data Type"::NUMBER));
            ComponentAmt := TaxTypeObjHelper.GetComponentAmountFrmTransValue(TaxTransactionValue);
            ComponentJObject.Add('Amount', ScriptDatatypeMgmt.ConvertXmlToLocalFormat(format(ComponentAmt, 0, 9), "Symbol Data Type"::NUMBER));
            JArray.Add(ComponentJObject);

        end;
        //until TaxTransactionValue.next = 0;
        GSTBaseAmtLineWise += ComponentAmt;
        //Message(Format(GSTBaseAmtLineWise));
    end;
}

