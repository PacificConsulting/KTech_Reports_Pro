report 50024 "GSTR-Sales"
{
    // version BRB.Purchae

    ProcessingOnly = true;
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Detailed GST Ledger Entry"; "Detailed GST Ledger Entry")
        {
            DataItemTableView = SORTING("Transaction Type", "Document Type", "Document No.", "Document Line No.")
                                ORDER(Ascending)
                                WHERE("Transaction Type" = CONST(Sales),
                                      "Entry Type" = CONST("Initial Entry"));

            trigger OnAfterGetRecord();
            begin
                InitializeRequest;
                //IF ("Detailed GST Ledger Entry"."Document Type" <> "Detailed GST Ledger Entry"."Document Type"::"Credit Memo") OR ("Detailed GST Ledger Entry"."Document Type" <> "Detailed GST Ledger Entry"."Document Type"::Invoice) THEN
                // CurrReport.SKIP;
                IF "Detailed GST Ledger Entry"."GST Component Code" = 'CGST' THEN
                    CurrReport.SKIP;
                txtData[1] := FORMAT("Posting Date");
                IF recCustomer.GET("Source No.") THEN BEGIN
                    txtData[6] := recCustomer.Name;
                    txtData[7] := recCustomer.City;
                    txtData[8] := recCustomer.Application; //Application
                    txtData[10] := recCustomer."GST Registration No.";
                    txtData[9] := recCustomer."Salesperson Code";//pcpl0024..added
                    //txtData[3] := FORMAT(recVend."GST Vendor Type");
                    IF recState.GET(recCustomer."State Code") THEN
                        txtData[4] := recState."State Code (GST Reg. No.)" + '-' + recState.Description;
                END;

                txtData[2] := "Document No.";
                txtData[3] := "External Document No.";
                txtData[5] := "Source No.";

                //IF recSalesInvhrd.GET("Detailed GST Ledger Entry"."Document No.") THEN//pcpl0024 commented
                // txtData[9] := recSalesInvhrd."Salesperson Code";//pcpl0024 commented
                IF recSalesInvlin.GET("Detailed GST Ledger Entry"."Document No.", "Detailed GST Ledger Entry"."Document Line No.") THEN BEGIN
                    txtData[18] := FORMAT(recSalesInvlin."Line Discount %");  //PCPL-25   //txtData[29] := FORMAT(recSalesInvlin."Line Discount %");//pcpl0024
                    txtData[19] := FORMAT(recSalesInvlin."Line Discount Amount"); //PCPL-25   //txtData[30] := FORMAT(recSalesInvlin."Line Discount Amount");//pcpl0024
                    txtData[17] := FORMAT(recSalesInvlin."Unit Price");   //PCPL-25  //txtData[31] := FORMAT(recSalesInvlin."Unit Price");//pcpl0024
                                                                          // txtData[35] := ('');//recSalesInvlin."Identification Mark"; //PCPL0041-S-E-04102019 //pcpl0024
                                                                          //txtData[37] := ;//pcpl-065
                    txtData[35] := recSalesInvlin."Identification Mark"; //pcpl-065

                END;
                IF item.GET("No.") THEN
                    txtData[11] := item.Description;
                //txtData[7] := "Detailed GST Ledger Entry"."Source No.";//

                txtData[11] := "Detailed GST Ledger Entry"."HSN/SAC Code";
                txtData[12] := ItemRec.Description; //"Detailed GST Ledger Entry"."No.";
                txtData[13] := '0';// "Detailed GST Ledger Entry"."Gen. Prod. Posting Group";
                txtData[14] := FORMAT(1);
                txtData[15] := FORMAT(recSalesInvlin."No. of Packages");   //PCPL-25 txtData[15] := ' ';
                txtData[33] := FORMAT(''); //PCPL0041-S-E-04102019 //PCPL-25   //txtData[27] := FORMAT(item."Product Group Code");//pcpl0024
                //txtData[34] := FORMAT(item."Main Item"); //PCPL0041-S-E-04102019 //PCPL-25   //txtData[28] := FORMAT(item."Pack Size");//pcpl0024
                txtData[34] := FORMAT(item."Pack Size");     //PCPL-25
                txtData[16] := FORMAT(ABS(Quantity));
                ;
                txtData[20] := item."Base Unit of Measure";  //PCPL-25      //txtData[17] := item."Base Unit of Measure";
                txtData[21] := FORMAT("GST Jurisdiction Type"); //PPCL-25   //  txtData[18] := FORMAT("GST Jurisdiction Type");
                txtData[22] := FORMAT("GST Group Code"); //FORMAT(ABS("GST %"));  //PCPL_25   //txtData[19] := FORMAT("GST Group Code"); //FORMAT(ABS("GST %"));
                txtData[23] := FORMAT(ABS("GST Base Amount"));    //PCPL_25     //txtData[20] := FORMAT(ABS("GST Base Amount"));
                IF "Detailed GST Ledger Entry"."GST Component Code" = 'IGST' THEN BEGIN
                    txtData[26] := FORMAT(ABS("GST Amount")); //PCPL-25   //txtData[23] := FORMAT(ABS("GST Amount"));
                    txtData[27] := FORMAT(ABS("GST Amount"));   //PCPL-25   //txtData[24] := FORMAT(ABS("GST Amount"));
                END ELSE BEGIN
                    //txtData[16] := FORMAT(ABS("GST %" * 2));
                    txtData[24] := FORMAT(ABS("GST Amount")); //PCPL-25     //txtData[21] := FORMAT(ABS("GST Amount"));
                    txtData[25] := FORMAT(ABS("GST Amount")); //PCPL_25    //txtData[22] := FORMAT(ABS("GST Amount"));
                    txtData[27] := FORMAT(ABS("GST Amount" * 2));  //PCPL-25   //txtData[24] := FORMAT(ABS("GST Amount" *2));
                END;
                //PCPL50
                CLEAR(txtData[28]);
                "Sales Invoice Line".RESET;
                "Sales Invoice Line".SETRANGE("Sales Invoice Line"."Document No.", "Detailed GST Ledger Entry"."Document No.");
                "Sales Invoice Line".SETRANGE("Sales Invoice Line"."Line No.", "Detailed GST Ledger Entry"."Document Line No.");
                // IF "Detailed GST Ledger Entry".FINDFIRST THEN //pcpl-065
                //     txtData[28] := format(tds_entries."TDS Base Amount");    // FORMAT("Sales Invoice Line"."TDS/TCS Amount");
                //PCPL50
                //txtData[29] := '0';//pcpl-065 //FORMAT("Detailed GST Ledger Entry"."Amount to Customer/Vendor"); //PCPL_25   //txtData[25] := FORMAT("Detailed GST Ledger Entry"."Amount to Customer/Vendor");

                //PCPL0041-S-04102019
                ShippingAgntCode.RESET;
                ShippingAgntCode.SETRANGE(ShippingAgntCode.Code, recSalesInvhrd."Shipping Agent Code");
                IF ShippingAgntCode.FINDFIRST THEN
                    txtData[30] := ShippingAgntCode.Name;

                recSalesInvhrd.RESET;
                recSalesInvhrd.SETRANGE("No.", recSalesInvlin."Document No.");
                IF recSalesInvhrd.FINDFIRST THEN BEGIN
                    txtData[31] := FORMAT(recSalesInvhrd."LR/RR No.");
                    txtData[32] := FORMAT(recSalesInvhrd."LR/RR Date");
                END;
                //PCPL0041-E-04102019
                //pcpl-065
                IF "Detailed GST Ledger Entry".Type = "Detailed GST Ledger Entry".Type::Item then Begin
                    ItemRec.GET("Detailed GST Ledger Entry"."No.");
                    ItemDesc := ItemRec.Description;
                    txtData[12] := ItemDesc;
                End;
                tds_entries.Reset;
                tds_entries.SetRange("Document No.", "Detailed GST Ledger Entry"."Document No.");
                IF tds_entries.FindFirst() then
                    txtData[36] := format(tds_entries."TCS Amount");

                txtData[33] := FORMAT("Detailed GST Ledger Entry"."Document Type"); //PCPL0041-S-E-04102019 //PCPL-25 //txtData[26]:= FORMAT("Detailed GST Ledger Entry"."Document Type");

                IF txtData[36] <> '' then
                    Evaluate(TDSDecimal, txtData[36])
                else
                    TDSDecimal := 0;

                IF "Detailed GST Ledger Entry"."GST Component Code" = 'IGST' THEN BEGIN
                    AmtToCustomer := TDSDecimal + (ABS("GST Base Amount")) + (ABS("Detailed GST Ledger Entry"."GST Amount"))
                end else
                    AmtToCustomer := TDSDecimal + (ABS("GST Base Amount")) + (ABS("Detailed GST Ledger Entry"."GST Amount" * 2));

                //PCPL-065

                // if (txtData[16] <> '') then
                //     Evaluate(EvaluateQuantity, txtData[16]);

                // if (txtData[17] <> '') then
                //     Evaluate(EvaluateUnitprice, txtData[17]);






                IF PrintToExcel THEN
                    MakeExcelDataBody;
            end;

            trigger OnPostDataItem();
            begin
                //ExcelBuf.NewRow;
            end;

            trigger OnPreDataItem();
            begin
                "Detailed GST Ledger Entry".SETRANGE("Detailed GST Ledger Entry"."Posting Date", StartDate, EndDate);
            end;
        }
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = WHERE("GST Group Code" = FILTER('HSN 0%'));

                trigger OnAfterGetRecord();
                begin
                    InitializeRequest;

                    txtData[1] := FORMAT("Posting Date");
                    IF recCustomer.GET("Sales Invoice Line"."Sell-to Customer No.") THEN BEGIN
                        txtData[6] := recCustomer.Name;
                        txtData[7] := recCustomer.City;
                        txtData[8] := recCustomer.Application; //Application
                        txtData[10] := recCustomer."GST Registration No.";
                        txtData[9] := recCustomer."Salesperson Code";//pcpl0024..added
                        IF recState.GET(recCustomer."State Code") THEN
                            txtData[4] := recState."State Code (GST Reg. No.)" + '-' + recState.Description;
                    END;


                    txtData[2] := "Document No.";
                    txtData[3] := "Sales Invoice Header"."External Document No.";
                    txtData[5] := "Sales Invoice Line"."Sell-to Customer No.";

                    txtData[18] := FORMAT("Line Discount %");
                    txtData[19] := FORMAT("Line Discount Amount");
                    txtData[17] := FORMAT("Unit Price");
                    txtData[35] := "Sales Invoice Line"."Identification Mark"; //"Identification Mark"; //pcpl-065//PCPL0041-S-E-04102019
                    IF item.GET("Sales Invoice Line"."No.") THEN
                        txtData[11] := item.Description;

                    txtData[11] := "Sales Invoice Line"."HSN/SAC Code";
                    txtData[12] := "Sales Invoice Line".Description;// "Sales Invoice Line"."No."; //pcpl-065
                    txtData[13] := "Sales Invoice Line"."Gen. Prod. Posting Group";
                    txtData[14] := FORMAT(1);
                    txtData[15] := FORMAT("Sales Invoice Line"."No. of Packages");   //PCPL-25 //'';
                    txtData[33] := '';//FORMAT(item."Product Group Code"); //PCPL0041-S-E-04102019
                    txtData[34] := FORMAT(item."Pack Size"); //PCPL-25   FORMAT(item."Main Item"); //PCPL0041-S-E-04102019
                    txtData[16] := FORMAT(ABS(Quantity));
                    ;
                    txtData[20] := item."Base Unit of Measure";//pcpl-065
                    txtData[21] := FORMAT("GST Jurisdiction Type");
                    txtData[22] := FORMAT("GST Group Code");
                    //txtData[23] := '0';//FORMAT(ABS("GST Base Amount")); //pcpl-065

                    //PCOPL50
                    //txtData[36] := "Sales Invoice Line".Description; //pcpl-065
                    /*RECtcsENTRY.RESET;
                    RECtcsENTRY.SETRANGE(RECtcsENTRY."Document No.","Sales Invoice Line"."Document No.");
                    IF RECtcsENTRY.FINDFIRST THEN
                       txtData[25] := FORMAT(RECtcsENTRY."TCS Amount");
                    MESSAGE(FORMAT(RECtcsENTRY."TCS Amount"));*/
                    //PCOPL50
                    txtData[26] := FORMAT(ABS(0));//FORMAT(ABS("GST Amount"));
                    txtData[27] := FORMAT(ABS(0));//FORMAT(ABS("GST Amount"));
                    txtData[24] := FORMAT(ABS(0));//FORMAT(ABS("GST Amount"));
                    txtData[25] := FORMAT(ABS(0));//FORMAT(ABS("GST Amount"));
                                                  //"Sales Invoice Header".CALCFIELDS("Sales Invoice Header"."Amount to Customer");//PCPL/0041
                    txtData[29] := txtdata[23];//pcpl-065 //FORMAT("Sales Invoice Line"."Amount To Customer");//"Detailed GST Ledger Entry"."Amount to Customer/Vendor");//PCPL0041

                    //PCPL0041-S-04102019
                    ShippingAgntCode.RESET;
                    ShippingAgntCode.SETRANGE(ShippingAgntCode.Code, "Sales Invoice Header"."Shipping Agent Code");
                    IF ShippingAgntCode.FINDFIRST THEN BEGIN
                        //PCPL0041-S-04102019
                        txtData[30] := FORMAT(ShippingAgntCode.Name);
                    END;
                    //PCPL0041-E-04102019
                    txtData[31] := FORMAT("Sales Invoice Header"."LR/RR No.");  //PCPL
                    txtData[32] := FORMAT("Sales Invoice Header"."LR/RR Date");
                    ;
                    //txtData[32]:= FORMAT("Sales Invoice Line".Type); //PCPL0041-S-E-04102019 //"Detailed GST Ledger Entry"."Document Type");
                    txtData[33] := FORMAT('Invoice');//PCPL0041-S-E-15102019
                    //pcpl-065
                    if (txtData[16] <> '') then
                        Evaluate(EvaluateQuantity, txtData[16]);

                    if (txtData[17] <> '') then
                        Evaluate(EvaluateUnitprice, txtData[17]);





                    IF PrintToExcel THEN
                        MakeExcelDataBody;

                end;
            }

            trigger OnPreDataItem();
            begin
                "Sales Invoice Header".SETRANGE("Sales Invoice Header"."Posting Date", StartDate, EndDate);
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Start Date"; StartDate)
                {
                    applicationarea = all;
                }
                field("End Date"; EndDate)
                {
                    applicationarea = all;
                }
                field(PrintToExcel; PrintToExcel)
                {
                    Caption = 'Print To Excel';
                    applicationarea = all;
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            PrintToExcel := TRUE;
        end;
    }

    labels
    {
    }

    trigger OnPostReport();
    begin
        IF PrintToExcel THEN
            CreateExcelbook;
    end;

    trigger OnPreReport();
    begin
        PostDate := "Detailed GST Ledger Entry".GETFILTER("Detailed GST Ledger Entry"."Posting Date");
        LocaName := "Detailed GST Ledger Entry".GETFILTER("Detailed GST Ledger Entry"."Location Code");

        IF Location.GET(LocaName) THEN;
        IF PrintToExcel THEN
            MakeExcelInfo;
        recCompanyInfo.GET();
    end;

    var
        AmtToCustomer: decimal;
        TDSDecimal: Decimal;
        ExcelBuf: Record 370 temporary;
        ItemRec: Record Item;
        ItemDesc: Text[100];
        txtData: array[255] of Text[200];
        PrintToExcel: Boolean;
        recCompanyInfo: Record 79;
        recCustomer: Record 18;
        recState: Record "State";
        recShipToAdd: Record 222;
        recSalesInvhrd: Record 112;
        recVend: Record 23;
        PurchInvHeader: Record 122;
        item: Record 27;
        LocaName: Text;
        Location: Record 14;
        PostDate: Text;
        recSalesInvlin: Record 113;
        StartDate: Date;
        EndDate: Date;
        ShippingAgntCode: Record 291;
        RECtcsENTRY: Record "TCS Entry";
        sales_credit_memo_line: record "Sales Cr.Memo Line";
        tds_entries: record 18810;
        EvaluateUnitprice: Decimal;
        EvaluateQuantity: Decimal;
        AmtToCustomer1: decimal;



    procedure MakeExcelInfo();
    begin
        //ExcelBuf.SetUseInfoSheet;
        ExcelBuf.AddInfoColumn(COMPANYNAME, FALSE, FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        //ExcelBuf.AddInfoColumn(USERID,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn('Sales Of' + PostDate, FALSE, FALSE, FALSE, false, '', ExcelBuf."Cell Type"::Date);
        ExcelBuf.NewRow;
        ExcelBuf.ClearNewRow;
        MakeExcelDataHeader;
    end;

    procedure MakeExcelDataHeader();
    begin
        ExcelBuf.AddColumn(COMPANYNAME, FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Sales of ' + PostDate, FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Posting Date', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);         //1
        ExcelBuf.AddColumn('Tax Invoice Number', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text); //2

        ExcelBuf.AddColumn('External Document No.', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);        //3
        ExcelBuf.AddColumn('Buyer State Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //4


        ExcelBuf.AddColumn('Customer No', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);                     //5
        ExcelBuf.AddColumn('Customer Name', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);                //6

        ExcelBuf.AddColumn('Buyer Region Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);          //7
        ExcelBuf.AddColumn('Application', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);          //8
        ExcelBuf.AddColumn('Sales Person/ Account Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text); //9
        ExcelBuf.AddColumn('Buyer/Seller GSTIN No', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);        //10
        ExcelBuf.AddColumn('HSN/SAC Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);           //11

        //ExcelBuf.AddColumn('Name of Item',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//11
        ExcelBuf.AddColumn('Item', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//12

        ExcelBuf.AddColumn('Product', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //13

        ExcelBuf.AddColumn('UNIT', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //14
        ExcelBuf.AddColumn('No. of Packages', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //15
        ExcelBuf.AddColumn('Quantity', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //16
        //
        ExcelBuf.AddColumn('Unit Price Excl. Tax', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);    //17-new...pcpl-25  //31...pcpl0024
        ExcelBuf.AddColumn('Discount %', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);      //18-new...pcpl-25      //29...pcpl0024
        ExcelBuf.AddColumn('Discount Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);   //19-new...pcpl-25    //30...pcpl0024
        //
        ExcelBuf.AddColumn('UOM', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text); //20-new...pcpl-25    //17

        ExcelBuf.AddColumn('GST Jurisdiction Type', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text); //21-new...pcpl-25    //18
        ExcelBuf.AddColumn('GST Group Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);        //22-new...pcpl-25    //19
        ExcelBuf.AddColumn('GST Base Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);       //23-new...pcpl-25    //20
        ExcelBuf.AddColumn('CGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);         //24-new...pcpl-25             //21
        ExcelBuf.AddColumn('SGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);      //25-new...pcpl-25               //22
        ExcelBuf.AddColumn('IGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);           //26-new...pcpl-25         //23

        //ExcelBuf.AddColumn('Description', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//pcpl-065
        ExcelBuf.AddColumn('Total GST Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);   //27-new...pcpl-25      //24
        ExcelBuf.AddColumn('TCS Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);// new PCPL50                      //25
        ExcelBuf.AddColumn('Amount To Customer', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);   //28-new...pcpl-25           //25

        //PCPL0041-S-04102019
        ExcelBuf.AddColumn('Transport ID', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn('LR No.', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn('LR Date', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);
        //PCPL0041-E-04102019

        ExcelBuf.AddColumn('Document Type', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);          //32-new...pcpl-25     //26
        //ExcelBuf.AddColumn('Document No.',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//26
        ExcelBuf.AddColumn('Product group code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);       //33-new...pcpl-25   //27...pcpl0024
        ExcelBuf.AddColumn('Pack Size', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);          //34-new...pcpl-25             //28...pcpl0024

        /*//
        ExcelBuf.AddColumn('Unit Price Excl. Tax',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//31...pcpl0024
        ExcelBuf.AddColumn('Discount %',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//29...pcpl0024
        ExcelBuf.AddColumn('Discount Amount',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//30...pcpl0024
        *///

        ExcelBuf.AddColumn('Lot No.', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//35...pcpl0024

    end;

    procedure MakeExcelDataBody();
    var
        y: Integer;
    begin
        ExcelBuf.NewRow;

        if txtData[23] = '' then
            txtdata[23] := Format(0);
        FOR y := 1 TO 26 DO BEGIN
            IF y IN [1] THEN
                ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Date)
            ELSE
                IF y IN [16, 20 .. 25] THEN
                    ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number)
                ELSE
                    ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        END;

        //ExcelBuf.AddColumn(txtData[36], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);//pcpl-065
        ExcelBuf.AddColumn(txtData[27], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);//pcpl0024
        ExcelBuf.AddColumn(txtData[36], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl-065
                                                                                                          // ExcelBuf.AddColumn(txtData[17], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number); // pcpl-065//pcpl0024
                                                                                                          // <<pcpl-065
        if txtData[27] = Format(0) then
            ExcelBuf.AddColumn(EvaluateQuantity * EvaluateUnitprice, FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number)


        ELSE
            ExcelBuf.AddColumn(Format(AmtToCustomer), FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
                                                                                                                        // >>pcpl-065
                                                                                                                        //PCPL0041-S-04102019
        ExcelBuf.AddColumn(txtData[29], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(txtData[30], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(txtData[31], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);

        ExcelBuf.AddColumn(txtData[32], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
        ExcelBuf.AddColumn(txtData[33], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
        ExcelBuf.AddColumn(txtData[34], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024

        // ExcelBuf.AddColumn(recSalesInvlin."Identification Mark", FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
        ExcelBuf.AddColumn(txtData[35], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
                                                                                                          // IF (txtData[22] = 'HSN 0%') THEN
                                                                                                          //     ExcelBuf.AddColumn(recSalesInvlin."Identification Mark", FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number);//pcpl0024
                                                                                                          // ELSE
                                                                                                          //     ExcelBuf.AddColumn(recSalesInvlin."Identification Mark", FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number)//pcpl0024







        //PCPL0041-E-04102019
    end;

    procedure CreateExcelbook();
    begin
        //ExcelBuf.CreateBookAndOpenExcel('D:\GST Report\GSTR-Sales.xlsx', 'GSTR-Sales', '', COMPANYNAME, USERID);
        //ERROR('');
        //<<PCPL/NSW/07 New Code for Onclode Excel Opne
        ExcelBuf.CreateNewBook('GSTR-Sales');
        ExcelBuf.WriteSheet('GSTR-Sales', CompanyName, UserId);
        ExcelBuf.CloseBook();
        ExcelBuf.SetFriendlyFilename('GSTR-Sales');
        ExcelBuf.OpenExcel();
        //>>PCPL/NSW/07 New Code for Onclode Excel Opne
    end;

    procedure InitializeRequest();
    var
        k: Integer;
    begin
        FOR k := 1 TO 40 DO BEGIN
            txtData[k] := '';
        END;
    end;
}

