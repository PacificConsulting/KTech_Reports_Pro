report 50018 "Proforma Invoice GST"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\Proforma Invoice GST-1.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Posting Date";
            column(URNNo; URNNo)
            {
            }
            column(LineDiscountAmt; LineDiscountAmt)
            {
            }
            column(ShiptoAddress_SalesHeader; "Sales Header"."Ship-to Address")
            {
            }
            column(ShiptoAddress2_SalesHeader; "Sales Header"."Ship-to Address 2")
            {
            }
            column(BilltoAddress_SalesHeader; "Sales Header"."Bill-to Address")
            {
            }
            column(BilltoAddress2_SalesHeader; "Sales Header"."Bill-to Address 2")
            {
            }
            column(Phone; Cust1."Phone No.")
            {
            }
            column(PaymentTermsCode_SalesHeader; "Sales Header"."Payment Terms Code")
            {
            }
            column(OrderDate_SalesHeader; "Sales Header"."Order Date")
            {
            }
            column(Email; Cust1."E-Mail")
            {
            }
            column(ContactName; Cust1.Contact)
            {
            }
            column(Logo; CompanyInfo.Picture)
            {
            }
            column(add; Add)
            {
            }
            column(ShipmentMethodCode_SalesInvoiceHeader; ShiAgent.Name)
            {
            }
            column(CGSTWords; CGSTWords[1])
            {
            }
            column(SGSTWords; SGSTWords[1])
            {
            }
            column(IGSTWords; IGSTWOrds[1])
            {
            }
            column(BillPan; RCust."P.A.N. No.")
            {
            }
            column(SHIPan; PANShip)
            {
            }
            column(StateCodeCust; RecState."State Code (GST Reg. No.)")
            {
            }
            column(PackageTrackingNo_SalesHeader; "Sales Header"."Package Tracking No.")
            {
            }
            column(YourReference_SalesHeader; "Sales Header"."Your Reference")
            {
            }
            column(LRRRDate_SalesInvoiceHeader; "Sales Header"."LR/RR Date")
            {
            }
            column(LRRRNo_SalesInvoiceHeader; "Sales Header"."LR/RR No.")
            {
            }
            column(ShiptoName_SalesInvoiceHeader; "Sales Header"."Ship-to Name")
            {
            }
            column(BilltoName_SalesInvoiceHeader; "Sales Header"."Bill-to Name")
            {
            }
            column(OrderDate_SalesInvoiceHeader; "Sales Header"."Order Date")
            {
            }
            column(OrderNo_SalesInvoiceHeader; "Sales Header"."Customer Order No.")
            {
            }
            column(PaymentTermsCode_SalesInvoiceHeader; "Sales Header"."Payment Terms Code")
            {
            }
            column(VehicleNo_SalesInvoiceHeader; "Sales Header"."Vehicle No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Header"."Posting Date")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Header"."No.")
            {
            }
            column(StateCust; RecState.Description)
            {
            }
            column(GSTINCUst; RCust."GST Registration No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader1; "Sales Header"."Posting Date")
            {
            }
            column(SalesOrderNo; "Sales Header"."No.")
            {
            }
            column(PaymentTermsCode; "Sales Header"."Payment Terms Code")
            {
            }
            column(ModeOfTransport; "Sales Header"."Mode of Transport")
            {
            }
            column(LRNo; "Sales Header"."LR/RR No.")
            {
            }
            column(LRDate; "Sales Header"."LR/RR Date")
            {
            }
            column(VehicleNo; "Sales Header"."Vehicle No.")
            {
            }
            column(AmountinWords1; AmountinWords[1])
            {
            }
            column(CGSTAmount; CGSTAmount)
            {
            }
            column(SGSTAmount; SGSTAmount)
            {
            }
            column(IGSTAmount; IGSTAmount)
            {
            }
            column(StateName; StateName)
            {
            }
            column(StateCode; StateCode)
            {
            }
            column(Frieght; Frieght)
            {
            }
            column(InsuAmt; InsuAmt)
            {
            }
            column(Insurance; Insurance)
            {
            }
            column(OtherCharges; OtherCharges)
            {
            }
            column(ShipToGSTRegistration; ShipToGSTRegistration)
            {

            }
            column(ShipToPANNo; ShipToPANNo)
            {

            }
            dataitem("CopyLoop."; "Integer")
            {
                DataItemTableView = SORTING("Number");
                column(OutPutNo; OutPutNo)
                {
                }
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING("Number")
                                        WHERE("Number" = CONST(1));
                    column(CopyText; COPYTEXT)
                    {
                    }
                    column(ComName; CompanyInfo.Name)
                    {
                    }
                    column(ComName1; CompanyInfo.Name + '' + CompanyInfo."Name 2")
                    {
                    }
                    column(ComAddress; CompanyInfo.Address + '' + CompanyInfo."Address 2" + '' + CompanyInfo.City + '' + CompanyInfo."Post Code")
                    {
                    }
                    column(BankAccntNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyLogo; CompanyInfo.Picture)
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(PageCaption; PageCaption)
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(State; CompanyInfo."State Code")
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(GSTIN; CompanyInfo."GST Registration No.")
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(BankName; recBank.Name)
                    {
                    }
                    column(BankAddress; recBank.Address)
                    {
                    }
                    column(BankAddress2; recBank."Address 2")
                    {
                    }
                    column(BankSwiftCode; recBank."SWIFT Code")
                    {
                    }
                    column(LocStateCode; recLocation."State Code")
                    {
                    }
                    column(CGSTPer; CGSTPer)
                    {
                    }
                    column(SGSTPer; SGSTPer)
                    {
                    }
                    column(IGSTPer; IGSTPer)
                    {

                    }
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = WHERE(Type = FILTER(Item));
                        column(BatchNo; '')//"Sales Line"."Identification Mark")
                        {
                        }
                        column(CGST; CGST)
                        {
                        }
                        column(SGST; SGST)
                        {
                        }
                        column(IGST; IGST)
                        {
                        }
                        column(LineDiscPer; "Sales Line"."Line Discount %")
                        {
                        }
                        // column(CGSTPer; CGSTPer)
                        // {
                        // }
                        // column(SGSTPer; SGSTPer)
                        // {
                        // }
                        column(UnitsperParcel_SalesLine; "Sales Line"."Units per Parcel")
                        {
                        }
                        column(NoofPackages_SalesInvoiceLine; "Sales Line"."No. of Packages")
                        {
                        }
                        // column(IGSTPer; IGSTPer)
                        // {
                        // }
                        column(SrNo; SrNo)
                        {
                        }
                        column(HSNSACCode_SalesInvoiceLine; "Sales Line"."HSN/SAC Code")
                        {
                        }
                        column(ItemNo; "Sales Line"."No.")
                        {
                        }
                        column(Description; "Sales Line".Description)
                        {
                        }
                        column(UOM; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        column(Quantity; "Sales Line".Quantity)
                        {
                        }
                        column(UnitPrice; "Sales Line"."Unit Price")
                        {
                        }
                        column(Amount; "Sales Line".Amount)
                        {
                        }
                        column(HSNHACCode; recSalesInvoiceLine."HSN/SAC Code")
                        {
                        }
                        column(DiscountPerc; recSalesInvoiceLine."Line Discount %")
                        {
                        }
                        column(TotalAmount; TotalAmount)
                        {
                        }
                        dataitem("Value Entry"; "Value Entry")
                        {
                            DataItemLink = "Document No." = FIELD("Document No."),
                                          "Document Line No." = FIELD("Line No.");
                            dataitem("Item Ledger Entry"; "Item Ledger Entry")
                            {
                                DataItemLink = "Entry No." = FIELD("Item Ledger Entry No.");
                                column(LotNo_ItemLedgerEntry; "Item Ledger Entry"."Lot No.")
                                {
                                }
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            SrNo += 1;

                            // TotalAmount := 0;
                            // recSalesInvoiceLine.RESET;
                            // recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                            // recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                            // IF recSalesInvoiceLine.FINDFIRST THEN
                            //     REPEAT
                            //         TotalAmount += recSalesInvoiceLine.Amount;
                            //     UNTIL recSalesInvoiceLine.NEXT = 0;
                        end;

                        trigger OnPreDataItem();
                        begin
                            NoOfRecords := "Sales Line".COUNT;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number = 1 THEN BEGIN
                        COPYTEXT := TEXT001;
                        OutPutNo += 1;
                    END

                    ELSE
                        IF Number = 2 THEN BEGIN
                            COPYTEXT := TEXT002;
                            OutPutNo += 1;
                        END

                        ELSE
                            IF Number = 3 THEN BEGIN
                                COPYTEXT := TEXT003;
                                OutPutNo += 1;
                            END

                            ELSE
                                IF Number = 4 THEN BEGIN
                                    COPYTEXT := TEXT004;
                                    OutPutNo += 1;
                                END;

                    SrNo := 0;

                    CurrReport.PAGENO := 1;
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(0) + 1;
                    IF NoOfLoops <= 1 THEN
                        NoOfLoops := 1;
                    COPYTEXT := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutPutNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                /*recCust.GET("Sales Header"."Sell-to Customer No.");
                 CustAddr[1] := recCust."No.";
                 CustAddr[2] := recCust.Name;
                 CustAddr[3] := recCust.Address;
                 CustAddr[4] := recCust."Address 2";
                 CustAddr[5] := recCust.City;
                 CustAddr[6] := recCust."Post Code";
                */
                SL.RESET;
                SL.SETRANGE(SL."Document No.", "Sales Header"."No.");
                SL.SETRANGE(SL.Type, SL.Type::Item);
                IF SL.FINDSET THEN
                    REPEAT
                        LineDiscountAmt += SL."Line Discount Amount";
                    UNTIL SL.NEXT = 0;
                IF "Sales Header"."Location Code" = 'UNIT1' THEN
                    Add := 'Unit I 6 1A & 2, Brahma Compound, Val Village, Rehanal, Thane - 421302, Maharashtra'
                ELSE
                    IF "Sales Header"."Location Code" = 'UNIT 2' THEN
                        Add := 'Unit II-Plot No. 288, Abitghar, Sathepada, Near Sati Rolling Mill, Tal. Wada, Dist. Palghar-421303';

                IF Cust1.GET("Sales Header"."Bill-to Customer No.") THEN;

                IF ShiAgent.GET("Sales Header"."Shipping Agent Code") THEN;
                IF RecState12.GET(CompanyInfo."State Code") THEN BEGIN
                    StateName := RecState12.Description;
                    StateCode := RecState12."State Code (GST Reg. No.)";
                END;

                IF RCust.GET("Sales Header"."Sell-to Customer No.") THEN BEGIN
                    IF RecState.GET(RCust."State Code") THEN;
                END;

                IF "Sales Header"."Ship-to Code" <> '' THEN BEGIN
                    recCust.RESET;
                    recCust.SETRANGE(recCust."No.", "Sales Header"."Bill-to Customer No.");
                    IF recCust.FINDFIRST THEN
                        PANShip := recCust."P.A.N. No.";
                END;

                IF RCust.GET("Sales Header"."Bill-to Customer No.") THEN;




                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");
                FormatAddr.SalesHeaderShipTo(ShipToAddr, custToAddr, "Sales Header");
                //FormatAddr.SalesHeaderShipTo()



                TotalAmount := 0;
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                IF recSalesInvoiceLine.FINDFIRST THEN
                    REPEAT
                        TotalAmount += recSalesInvoiceLine.Amount;
                    UNTIL recSalesInvoiceLine.NEXT = 0;
                //Frieght
                recSalesReceivablessetup.Get();
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablessetup.Frieght);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght := recSalesInvoiceLine."Line Amount";
                end;

                //Insurance
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablesSetup.Insurance);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    InsuAmt := recSalesInvoiceLine."Line Amount";

                end;


                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablesSetup.Courier);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght += recSalesInvoiceLine."Line Amount";

                end;





                GetSalesStatisticsAmount("Sales Header", TotalGSTAmount, TotalGSTPercent);

                repCheck.InitTextVariable;
                repCheck.FormatNoText(AmountinWords, Round((TotalAmount + IGSTAmount + SGSTAmount + CGSTAmount + Frieght + InsuAmt)), "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(CGSTWords, CGSTAmount, "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(SGSTWords, SGSTAmount, "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(IGSTWOrds, IGSTAmount, "Sales Header"."Currency Code");
                //PCPL50
                recCust.RESET;
                recCust.SETRANGE(recCust."No.", "Sales Header"."Bill-to Customer No.");
                IF recCust.FINDFIRST THEN
                    URNNo := recCust."URN No.";
                //PCPL50
                // Message(FORMAT(CGSTPer));

                //PCPL-64 22DEC2022<<
                ShipToAddress1.Reset();
                ShipToAddress1.SetRange("Customer No.", "Sales Header"."Sell-to Customer No.");
                if ShipToAddress1.FindFirst() then;

                Customer.GET("Sales Header"."Sell-to Customer No.");
                if ("Sales Header"."Ship-to Code" <> '') then begin
                    if ShipToAddress1."Other Consignee" = true then begin
                        ShipToGSTRegistration := ShipToAddress1."Ship To GST Registration No.";
                        ShipToPANNo := ShipToAddress1."P.A.N.No.";
                    end
                    else begin
                        ShipToGSTRegistration := Customer."GST Registration No.";
                        ShipToPANNo := Customer."P.A.N. No.";
                    end

                end else begin
                    ShipToGSTRegistration := Customer."GST Registration No.";
                    ShipToPANNo := Customer."P.A.N. No.";
                end;
                //PCPL-64 22DEC2022>>
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Functions)
                {
                    field("No Of Copies"; NoOfCopies)
                    {
                        ApplicationArea = all;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
        FormatAddr.Company(CompanyAddr, CompanyInfo);
    end;

    var
        TotalGSTPercent: Decimal;
        TotalGSTAmount: Decimal;
        CompanyInfo: Record 79;
        FormatAddr: Codeunit 365;
        CustAddr: array[8] of Text;
        CompanyAddr: array[8] of Text;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutPutNo: Integer;
        TEXT001: Label 'Original for Recipient';
        COPYTEXT: Text;
        TEXT002: Label 'Duplicate for Supplier';
        TEXT003: Label 'Triplicate for Transporter';
        TEXT004: Label 'Extra Copy';
        PageCaption: Label 'Page %1 of %2';
        NoOfRows: Integer;
        NoOfRecords: Integer;
        recCust: Record 18;
        repCheck: Codeunit 50000;
        AmountinWords: array[5] of Text[250];
        NoText: array[2] of Text;
        TotalAmount: Decimal;
        recSalesInvoiceLine: Record 37;
        SrNo: Integer;
        GLE: Record "Detailed GST Entry Buffer";
        CGST: Decimal;
        SGST: Decimal;
        IGST: Decimal;
        CGSTPer: Decimal;
        SGSTPer: Decimal;
        IGSTPer: Decimal;
        CGSTAmount: Decimal;
        SGSTAmount: Decimal;
        IGSTAmount: Decimal;
        ShipToAddr: array[8] of Text[50];
        custToAddr: array[8] of Text[50];
        recBank: Record 270;
        recLocation: Record 14;
        RecState: Record "State";
        StateName: Text[50];
        StateCode: Code[20];
        ShipToGST: Code[20];
        ShipToState: Text[20];
        ShipToStateCode: Code[20];
        BillToGST: Code[20];
        BillToState: Text[20];
        BillToStateCode: Code[20];
        Frieght: Decimal;
        Insurance: Decimal;
        OtherCharges: Decimal;
        //PostedStrOrderdetailLines: Record 13795;
        RCust: Record 18;
        ShipToAdd: Record 222;
        PANShip: Code[20];
        CGSTWords: array[5] of Text[250];
        SGSTWords: array[5] of Text[250];
        IGSTWOrds: array[5] of Text[250];
        Add: Text[250];
        ShiAgent: Record 291;
        LineDiscountAmt: Decimal;
        Cust1: Record 18;
        InsuAmt: Decimal;
        SL: Record 37;
        RecState12: Record "State";
        URNNo: Code[17];
        IGSTLbl: Label 'IGST';
        SGSTLbl: Label 'SGST';
        CGSTLbl: Label 'CGST';
        CESSLbl: Label 'CESS';
        GSTLbl: Label 'GST';
        GSTCESSLbl: Label 'GST CESS';
        RsLbl: Label 'Rs. ';
        recSalesReceivablessetup: Record "Sales & Receivables Setup";
        ShipToAddress1: Record "Ship-to Address";
        Customer: Record Customer;
        ShipToGSTRegistration: Code[20];
        ShipToPANNo: Code[20];
        

    procedure GetSalesStatisticsAmount(
       SalesHeader: Record "Sales Header";
       var GSTAmount: Decimal; var GSTPercent: Decimal)
    var
        SalesLine: Record "Sales Line";
        TotalAmountLine: Decimal;
    begin
        Clear(GSTAmount);
        Clear(SGSTAmount);
        Clear(IGSTAmount);
        // Clear(IGSTAmt);
        // Clear(IGSTPercent);
        // Clear(SGSTPercent);
        // Clear(CGSTPercent);

        SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document no.", SalesHeader."No.");
        if SalesLine.FindSet() then
            repeat
                GSTAmount += GetGSTAmount(SalesLine.RecordId());
                GSTPercent += GetGSTPercent(SalesLine.RecordId());
                TotalAmountLine += SalesLine."Line Amount" - SalesLine."Line Discount Amount";
                GetGSTAmounts(SalesLine);
            until SalesLine.Next() = 0;
    end;

    local procedure GetGSTAmount(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        if GSTSetup."Cess Tax Type" <> '' then
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type", GSTSetup."Cess Tax Type")
        else
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then begin
            TaxTransactionValue.CalcSums(Amount);
            TaxTransactionValue.CalcSums(Percent);
            /*  if TaxTransactionValue."Value ID" = 6 then begin
                 SGSTAmt += TaxTransactionValue.Amount;
                 SGSTPercent += TaxTransactionValue.Percent;
             end;
             if TaxTransactionValue."Value ID" = 2 then begin
                 CGSTAmt += TaxTransactionValue.Amount;
                 CGSTPercent += TaxTransactionValue.Percent;
             end;
             if TaxTransactionValue."Value ID" = 3 then begin
                 IGSTAmt += TaxTransactionValue.Amount;
                 IGSTPercent += TaxTransactionValue.Percent;
             end; */
        end;
        exit(TaxTransactionValue.Amount);
    end;

    local procedure GetGSTPercent(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        if GSTSetup."Cess Tax Type" <> '' then
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type", GSTSetup."Cess Tax Type")
        else
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Percent);

        exit(TaxTransactionValue.Percent);
    end;

    local procedure GetGSTAmounts(Salesline: Record "Sales Line")
    var
        ComponentName: Code[30];
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        ComponentName := GetComponentName(Salesline, GSTSetup);

        if (Salesline.Type <> Salesline.Type::" ") then begin
            TaxTransactionValue.Reset();
            TaxTransactionValue.SetRange("Tax Record ID", Salesline.RecordId);
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
            TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
            TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
            if TaxTransactionValue.FindSet() then
                repeat
                    case TaxTransactionValue."Value ID" of
                        6:
                            begin
                                CGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                SGSTPer := TaxTransactionValue.Percent;
                            end;
                        2:
                            begin
                                SGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                CGSTPer := TaxTransactionValue.Percent;
                            end;
                        3:
                            begin
                                IGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                IGSTPer := TaxTransactionValue.Percent;
                            end;
                    end;
                until TaxTransactionValue.Next() = 0;
        end;
    end;

    procedure GetGSTRoundingPrecision(ComponentName: Code[30]): Decimal
    var
        TaxComponent: Record "Tax Component";
        GSTSetup: Record "GST Setup";
        GSTRoundingPrecision: Decimal;
    begin
        if not GSTSetup.Get() then
            exit;
        GSTSetup.TestField("GST Tax Type");

        TaxComponent.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxComponent.SetRange(Name, ComponentName);
        TaxComponent.FindFirst();
        if TaxComponent."Rounding Precision" <> 0 then
            GSTRoundingPrecision := TaxComponent."Rounding Precision"
        else
            GSTRoundingPrecision := 1;
        exit(GSTRoundingPrecision);
    end;

    local procedure GetComponentName(SalesLine: Record "Sales Line";
        GSTSetup: Record "GST Setup"): Code[30]
    var
        ComponentName: Code[30];
    begin
        if GSTSetup."GST Tax Type" = GSTLbl then
            if SalesLine."GST Jurisdiction Type" = SalesLine."GST Jurisdiction Type"::Interstate then
                ComponentName := IGSTLbl
            else
                ComponentName := CGSTLbl
        else
            if GSTSetup."Cess Tax Type" = GSTCESSLbl then
                ComponentName := CESSLbl;
        exit(ComponentName)
    end;



}

