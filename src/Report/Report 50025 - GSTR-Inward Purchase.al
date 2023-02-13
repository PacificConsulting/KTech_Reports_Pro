report 50025 "GSTR-Inward Purchase"
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
                                WHERE("Transaction Type" = CONST(Purchase),
                                      "Entry Type" = CONST("Initial Entry"));
            RequestFilterFields = "Posting Date", "Document Type";

            trigger OnAfterGetRecord();
            begin
                InitializeRequest;
                IF "Detailed GST Ledger Entry"."Document Type" = "Detailed GST Ledger Entry"."Document Type"::Payment THEN
                    CurrReport.SKIP;
                IF "Detailed GST Ledger Entry"."GST Component Code" = 'CGST' THEN
                    CurrReport.SKIP;
                txtData[1] := FORMAT("Posting Date");
                IF recVend.GET("Source No.") THEN BEGIN
                    txtData[8] := recVend.Name;
                    txtData[9] := recVend."GST Registration No.";
                    //txtData[3] := FORMAT(recVend."GST Vendor Type");
                    IF recState.GET(recVend."State Code") THEN
                        txtData[6] := recState."State Code (GST Reg. No.)" + '-' + recState.Description;
                END;
                txtData[3] := "Document No.";

                txtData[5] := "Detailed GST Ledger Entry"."Location Code";
                IF PurchInvHeader.GET("Detailed GST Ledger Entry"."Document No.") THEN
                    txtData[2] := (PurchInvHeader."Vendor Invoice No.");
                txtData[4] := PurchInvHeader."Order No.";
                //IF Type = "Detailed GST Ledger Entry".Type::Item THEN BEGIN
                txtData[12] := "Detailed GST Ledger Entry"."No.";
                //END;
                IF item.GET("No.") THEN
                    txtData[11] := item.Description;
                txtData[13] := item."Gen. Prod. Posting Group";
                IF GLAccount.GET("No.") THEN BEGIN
                    txtData[11] := GLAccount.Name;
                    txtData[13] := GLAccount."Gen. Prod. Posting Group";
                END;
                txtData[7] := "Detailed GST Ledger Entry"."Source No.";//
                txtData[10] := "Detailed GST Ledger Entry"."HSN/SAC Code";
                //txtData[10] := FORMAT("Amount to Customer/Vendor");



                //txtData[15] := 'Regular GST Supply';

                txtData[14] := FORMAT("Detailed GST Ledger Entry".Quantity);
                txtData[15] := item."Base Unit of Measure";
                txtData[16] := FORMAT("GST Jurisdiction Type");
                txtData[17] := FORMAT("GST Group Code");
                txtData[18] := FORMAT("GST Base Amount");
                IF "Detailed GST Ledger Entry"."GST Component Code" = 'IGST' THEN BEGIN
                    //txtData[16] := FORMAT(ABS("GST %"));
                    txtData[21] := FORMAT(ABS("GST Amount"));
                    txtData[22] := FORMAT(ABS("GST Amount"));
                END ELSE BEGIN
                    //txtData[16] := FORMAT(ABS("GST %" * 2));
                    txtData[19] := FORMAT(ABS("GST Amount"));
                    txtData[20] := FORMAT(ABS("GST Amount"));
                    txtData[22] := FORMAT(ABS("GST Amount" * 2));  //Total GST
                END;

                /*IF "Detailed GST Ledger Entry"."GST on Advance Payment" THEN
                  txtData[23] := 'Y'
                ELSE
                  txtData[23] := 'N';
                txtData[24] := '';  //Advance Payment
                txtData[25] := '';  //
                */
                txtData[23] := '';//FORMAT("Detailed GST Ledger Entry"."Amount to Customer/Vendor");
                txtData[24] := FORMAT("Detailed GST Ledger Entry"."Document Type");

                IF PrintToExcel THEN
                    MakeExcelDataBody;

            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field(PrintToExcel; PrintToExcel)
                {
                    Caption = 'Print To Excel';
                    ApplicationArea = all;
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
        ExcelBuf: Record 370 temporary;
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
        GLAccount: Record 15;
        LocaName: Text;
        Location: Record 14;
        PostDate: Text;

    procedure MakeExcelInfo();
    begin
        //ExcelBuf.SetUseInfoSheet;
        //ExcelBuf.AddInfoColumn(COMPANYNAME,FALSE,'',FALSE,FALSE,FALSE,'',ExcelBuf."Cell Type"::Text);
        //ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(USERID, FALSE, FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(TODAY, FALSE, FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Date);
        ExcelBuf.NewRow;
        ExcelBuf.ClearNewRow;
        MakeExcelDataHeader;
    end;

    procedure MakeExcelDataHeader();
    begin
        /*
        ExcelBuf.AddColumn('Compnay Name',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(COMPANYNAME,FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Report Name',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn('Purchase Report',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Period',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(PostDate,FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Location Name',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Location.Name,FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn('GST Number',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        ExcelBuf.AddColumn(Location."GST Registration No.",FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);
        */
        ExcelBuf.AddColumn(COMPANYNAME, FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Purchase of ' + PostDate, FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn('Posting Date', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);         //1
        ExcelBuf.AddColumn('Vendor Invoice Number', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text); //2
        ExcelBuf.AddColumn('Purchase Invoice No.', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);    //3
        ExcelBuf.AddColumn('P.O. No.', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);        //4
        ExcelBuf.AddColumn('Unit Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);          //5
        ExcelBuf.AddColumn('Seller State Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //6 Optional
        ExcelBuf.AddColumn('Vendor No', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);                     //7
        ExcelBuf.AddColumn('Vendor Name', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);                //8
        ExcelBuf.AddColumn('Buyer/Seller GSTIN No', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);        //9
        ExcelBuf.AddColumn('HSN/SAC Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);           //10

        ExcelBuf.AddColumn('Name of Item', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//11
        ExcelBuf.AddColumn('Item', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//12
        ExcelBuf.AddColumn('Product', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //13
        //ExcelBuf.AddColumn('PACK SIZE',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);     //14
        //ExcelBuf.AddColumn('UNIT',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);     //15
        ExcelBuf.AddColumn('Quantity', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //16
        ExcelBuf.AddColumn('UOM', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //17

        ExcelBuf.AddColumn('GST Jurisdiction Type', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);     //18
        ExcelBuf.AddColumn('GST Group Code', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//19
        ExcelBuf.AddColumn('GST Base Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//20
        ExcelBuf.AddColumn('CGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);    //21
        ExcelBuf.AddColumn('SGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);  //22
        ExcelBuf.AddColumn('IGST', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);    //23
        ExcelBuf.AddColumn('Total GST Amount', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);      //24
        ExcelBuf.AddColumn('Amount To Vendor', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//25
        ExcelBuf.AddColumn('Document Type', FALSE, '', TRUE, FALSE, TRUE, '', ExcelBuf."Cell Type"::Text);//25
        //ExcelBuf.AddColumn('Document No.',FALSE,'',TRUE,FALSE,TRUE,'',ExcelBuf."Cell Type"::Text);//26

    end;

    procedure MakeExcelDataBody();
    var
        y: Integer;
    begin
        ExcelBuf.NewRow;
        FOR y := 1 TO 26 DO BEGIN
            IF y IN [1] THEN
                ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Date)
            ELSE
                IF y IN [14, 18 .. 23] THEN
                    ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Number)
                ELSE
                    ExcelBuf.AddColumn(txtData[y], FALSE, '', FALSE, FALSE, FALSE, '', ExcelBuf."Cell Type"::Text);
        END;
    end;

    procedure CreateExcelbook();
    begin
        //ExcelBuf.CreateBookAndOpenExcel('D:\GST Report\GSTR-Purchase.xlsx', 'GSTR-Purchase', '', COMPANYNAME, USERID);
        //pcpl065 10122022
        //ERROR('');
        //<<PCPL/NSW/07 New Code for Onclode Excel Opne
        ExcelBuf.CreateNewBook('GSTR-Purchase');
        ExcelBuf.WriteSheet('GSTR-Purchase', CompanyName, UserId);
        ExcelBuf.CloseBook();
        ExcelBuf.SetFriendlyFilename('GSTR-Purchase');
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

