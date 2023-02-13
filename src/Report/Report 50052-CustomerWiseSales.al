report 50052 "Customer Wise Sales"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src/Report Layout/CustomerWiseSales.rdl';

    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = all;


    dataset
    {
        dataitem("Item Ledger Entry"; "Item Ledger Entry")
        {
            DataItemTableView = WHERE("Entry Type" = FILTER(Sale));
            RequestFilterFields = "Source No.", "Posting Date";
            column(SourceNo_ItemLedgerEntry; "Item Ledger Entry"."Source No.")
            {
            }
            column(ItemNo_ItemLedgerEntry; "Item Ledger Entry"."Item No.")
            {
            }
            column(PostingDate_ItemLedgerEntry; "Item Ledger Entry"."Posting Date")
            {
            }
            column(Quantity_ItemLedgerEntry; ABS("Item Ledger Entry".Quantity))
            {
            }
            column(customerName; cust.Name)
            {
            }
            column(Qty20; Qty20)
            {
            }
            column(Qty_20; Qty_20)
            {
            }
            column(Qty21; Qty21)
            {
            }
            column(Qty_21; Qty_21)
            {
            }
            column(Qty_19; Qty_19)
            {
            }
            column(Qty19; Qty19)
            {
            }
            column(Qty22; Qty22)
            {
            }
            column(Qty_22; Qty_22)
            {
            }
            column(Qty18; Qty18)
            {
            }
            column(Qty17; Qty17)
            {
            }
            column(Qty_17; Qty_17)
            {
            }
            column(Qty_18; Qty_18)
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF cust.GET("Item Ledger Entry"."Source No.") THEN;
                year := DATE2DMY("Item Ledger Entry"."Posting Date", 3);
                mont := DATE2DMY("Item Ledger Entry"."Posting Date", 2);

                Q1StartD := DMY2DATE(1, 4, year);
                Q1EndD := DMY2DATE(30, 9, year);
                IF mont IN [4, 5, 6, 7, 8, 9] THEN
                    Q2EndDate := DMY2DATE(31, 3, year)
                ELSE
                    Q2EndDate := DMY2DATE(31, 3, year + 1);

                IF mont IN [1, 2, 3] THEN
                    Q2startDate := DMY2DATE(1, 10, year - 1)
                ELSE
                    Q2startDate := DMY2DATE(1, 10, year);

                CLEAR(SaleQty17);
                CLEAR(SaleQty_17);
                CLEAR(SaleQty18);
                CLEAR(SaleQty_18);
                CLEAR(SaleQty19);
                CLEAR(SaleQty_19);
                CLEAR(SaleQty20);
                CLEAR(SaleQty_20);
                CLEAR(SaleQty_21);
                CLEAR(SaleQty21);
                CLEAR(SaleQty_22);
                CLEAR(SaleQty22);

                CLEAR(Qty17);
                CLEAR(Qty_17);
                CLEAR(Qty18);
                CLEAR(Qty_18);
                CLEAR(Qty19);
                CLEAR(Qty_19);
                CLEAR(Qty20);
                CLEAR(Qty_20);
                CLEAR(Qty_21);
                CLEAR(Qty21);
                CLEAR(Qty_22);
                CLEAR(Qty22);

                CLEAR(RetQty_17);
                CLEAR(RetQty17);
                CLEAR(RetQty_18);
                CLEAR(RetQty18);
                CLEAR(RetQty_19);
                CLEAR(RetQty19);
                CLEAR(RetQty_20);
                CLEAR(RetQty20);
                CLEAR(RetQty_21);
                CLEAR(RetQty21);
                CLEAR(RetQty_22);
                CLEAR(RetQty22);

                //IF "Item Ledger Entry"."Document Type" <> "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN BEGIN
                IF ((year = 2017) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2018) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty17 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty17 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) AND ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_17 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_17 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;

                IF ((year = 2018) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2019) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty18 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty18 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) AND ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_18 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_18 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;

                IF ((year = 2019) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2020) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty19 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty19 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) AND ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_19 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_19 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;

                //IF (year = 2020) OR (year = 2021) THEN BEGIN
                IF ((year = 2020) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2021) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty20 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty20 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) AND ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_20 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_20 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;

                //IF (year = 2021) OR (year = 2022) THEN BEGIN
                IF ((year = 2021) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2022) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty21 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty21 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) OR ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_21 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_21 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;

                //IF (year = 2022) OR (year = 2023) THEN BEGIN
                IF ((year = 2022) AND (mont IN [4, 5, 6, 7, 8, 9, 10, 11, 12])) OR ((year = 2023) AND (mont IN [1, 2, 3])) THEN BEGIN
                    IF ("Item Ledger Entry"."Posting Date" >= Q1StartD) AND ("Item Ledger Entry"."Posting Date" <= Q1EndD) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty22 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty22 += ABS("Item Ledger Entry".Quantity);
                    END;
                    IF ("Item Ledger Entry"."Posting Date" >= Q2startDate) OR ("Item Ledger Entry"."Posting Date" <= Q2EndDate) THEN BEGIN
                        IF "Item Ledger Entry"."Document Type" = "Item Ledger Entry"."Document Type"::"Sales Return Receipt" THEN
                            RetQty_22 += ABS("Item Ledger Entry".Quantity)
                        ELSE
                            SaleQty_22 += ABS("Item Ledger Entry".Quantity);
                    END;
                END;
                //END;
                Qty17 += SaleQty17 - RetQty17;
                Qty_17 += SaleQty_17 - RetQty_17;
                Qty18 += SaleQty18 - RetQty18;
                Qty_18 += SaleQty_18 - RetQty_18;
                Qty19 += SaleQty19 - RetQty19;
                Qty_19 += SaleQty_19 - RetQty_19;
                Qty20 += SaleQty20 - RetQty20;
                Qty_20 += SaleQty_20 - RetQty_20;
                Qty21 += SaleQty21 - RetQty21;
                Qty_21 += SaleQty_21 - RetQty_21;
                Qty22 += SaleQty22 - RetQty22;
                Qty_22 += SaleQty_22 - RetQty_22;
            end;

            trigger OnPreDataItem()
            begin
                SETRANGE("Entry Type", "Entry Type"::Sale);
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
        cust: Record 18;
        year: Integer;
        Q1StartD: Date;
        Q1EndD: Date;
        Q2startDate: Date;
        Q2EndDate: Date;
        Qty20: Decimal;
        Qty_20: Decimal;
        mont: Integer;
        Qty21: Decimal;
        Qty_21: Decimal;
        Qty_19: Decimal;
        Qty19: Decimal;
        Qty22: Decimal;
        Qty_22: Decimal;
        RetQty20: Decimal;
        RetQty_20: Decimal;
        RetQty21: Decimal;
        RetQty_21: Decimal;
        RetQty_19: Decimal;
        RetQty19: Decimal;
        RetQty22: Decimal;
        RetQty_22: Decimal;
        SaleQty20: Decimal;
        SaleQty_20: Decimal;
        SaleQty21: Decimal;
        SaleQty_21: Decimal;
        SaleQty_19: Decimal;
        SaleQty19: Decimal;
        SaleQty22: Decimal;
        SaleQty_22: Decimal;
        SaleQty17: Decimal;
        SaleQty_17: Decimal;
        SaleQty18: Decimal;
        SaleQty_18: Decimal;
        RetQty17: Decimal;
        RetQty_17: Decimal;
        RetQty18: Decimal;
        RetQty_18: Decimal;
        Qty17: Decimal;
        Qty18: Decimal;
        Qty_17: Decimal;
        Qty_18: Decimal;
}

