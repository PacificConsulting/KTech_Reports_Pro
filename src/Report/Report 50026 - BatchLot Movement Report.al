report 50026 "Batch/Lot Movement Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\BatchLot Movement Report.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = WHERE("Entry Type" = FILTER(Sale),
                                      "Source Type" = FILTER(Customer));
            RequestFilterFields = "Entry Type", "Item No.";
            column(SourceNo_ItemLedgerEntry; "Item Ledger Entry"."Source No.")
            {
            }
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(Description_ItemLedgerEntry; "Item Ledger Entry".Description)
            {
            }
            column(Quantity_ItemLedgerEntry; "Item Ledger Entry".Quantity)
            {
            }
            column(name; name)
            {
            }
            column(MainItemNo; MainItemNo)
            {
            }
            column(LotNo_ItemLedgerEntry; "Item Ledger Entry"."Lot No.")
            {
            }
            column(itemdesc; itemdesc)
            {
            }
            column(Desc; Desc)
            {
            }
            column(DocumentNo_ItemLedgerEntry; "Item Ledger Entry"."Document No.")
            {
            }
            column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
            {
            }
            column(DocumentType_ItemLedgerEntry; "Item Ledger Entry"."Document Type")
            {
            }
            column(invoiceNo; invoiceNo)
            {
            }

            trigger OnAfterGetRecord();
            begin
                recCustomer.RESET;
                recCustomer.SETRANGE(recCustomer."No.", "Item Ledger Entry"."Source No.");
                IF recCustomer.FINDFIRST THEN BEGIN
                    name := recCustomer.Name;
                END;

                MainItemNo := '';
                itemdesc := '';
                RecItem.RESET;
                RecItem.SETRANGE(RecItem."No.", "Item Ledger Entry"."Item No.");
                IF RecItem.FINDFIRST THEN BEGIN
                    Desc := RecItem.Description;
                    item.RESET;
                    //item.SETRANGE(item."No.",RecItem.Synonym);
                    item.SETRANGE(item."No.", RecItem."Main Item No.");
                    IF item.FINDFIRST THEN BEGIN
                        MainItemNo := item."No.";
                        itemdesc := item.Description;
                    END;
                END;


                invoiceNo := '';
                ItemLedgerEntry.RESET;
                ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Document Type", "Item Ledger Entry"."Document Type"::"Sales Shipment");
                IF ItemLedgerEntry.FINDFIRST THEN
                    SalesShipmentHeader.RESET;
                SalesShipmentHeader.SETRANGE(SalesShipmentHeader."No.", "Item Ledger Entry"."Document No.");
                IF SalesShipmentHeader.FINDFIRST THEN BEGIN
                    SalesInvoiceLine.RESET;
                    SalesInvoiceLine.SETRANGE(SalesInvoiceLine."Sell-to Customer No.", SalesShipmentHeader."Sell-to Customer No.");
                    IF SalesInvoiceLine.FINDFIRST THEN BEGIN
                        invoiceNo := SalesInvoiceLine."Document No.";
                    END
                END
                ELSE
                    invoiceNo := "Item Ledger Entry"."Document No.";
                //PCPL/BRB
                ValueEntry.RESET;
                ValueEntry.SETRANGE("Document Type", ValueEntry."Document Type"::"Sales Invoice");
                ValueEntry.SETRANGE("Item Ledger Entry No.", "Item Ledger Entry"."Entry No.");
                IF ValueEntry.FINDFIRST THEN
                    invoiceNo := ValueEntry."Document No.";
                //PCPL/BRB
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
        RecItem: Record 27;
        recCustomer: Record 18;
        name: Text[50];
        MainItemNo1: Code[50];
        MainItemNo: Code[50];
        itemdesc: Code[50];
        item: Record 27;
        Desc: Text[50];
        ItemLedgerEntry: Record 32;
        invoiceNo: Code[20];
        SalesShipmentHeader: Record 110;
        SalesInvoiceLine: Record 113;
        ValueEntry: Record 5802;
}

