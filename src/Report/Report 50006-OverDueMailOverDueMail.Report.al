report 50006 "Over Due MailOver Due Mail"
{
    ProcessingOnly = true;
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = WHERE("Outstanding Mail" = CONST(true));
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                // recSaleSetup.GET;
                SendMailToCust(Customer."No.")
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

    trigger OnPostReport()
    begin
        MESSAGE('Done');
        // Message(Format(amt)); //pcpl-065
    end;

    var
        recCust: Record 18;
        VarEmailSender: Text;
        VarRecipaint: list of [Text];
        VarRecipaint11: list of [Text];
        //SMTP: Codeunit 400;
        recSaleSetup: Record 311;
        CustLedgEntry: Record 21;
        TotalAmt: Decimal;
        txttotaamt: Text;
        TotalRemAmt: Decimal;
        INtTotalRemAmt: Integer;
        INtTotalAmt: Integer;
        INtDueAmt: Integer;
        INtOverDueAmt: Integer;
        fortextTotaRem: Text;
        fortextDueAmount: Text;
        fortextTotaAmount: Text;
        fortextOverDueAmount: text;
        textRemAmt: Text;
        textDueAmt: Text;
        textOverDueAmt: Text;

        textTotalAmt: Text;
        DecTotalRemAmt: Decimal;
        DecOverDueAmt: Decimal;
        DecTotalAmt: Decimal;
        DecTotalDueAmt: Decimal;

        Day: Integer;
        Month: Integer;
        Year: Integer;
        ClosDate: Text;
        Dayy: Integer;
        InputDate: Date;
        OverDueAmount: Decimal;
        DueAmt: Decimal;
        TotalOverDutAmt: Decimal;
        TotalDueAmt: Decimal;
        OverdudueDays: Integer;
        Cdate: Date;
        Cdate1: Date;
        MonLength: Integer;
        CurrDateText: Text;
        Currmon: Integer;
        currDate: Date;
        CurrYear: Integer;
        date11: Date;
        lenthDay: Integer;
        LenthMonth: Integer;
        Daytext: Text;
        MonthTxt: Text;
        amt: Decimal;
        remainingamt: Decimal;
        email1: list of [Text];
        account_mail_id: Text;
        ktech_mail_id: text;



    // [Scope('Internal')]
    procedure SendMailToCust(CustNo: Code[20])
    var
        Customer: Record 18;
        CustLedgEntry: Record 21;
        SalesPerson: Record 13;
        intDays: Integer;
        blSendMail: Boolean;
        decTtlOrgAmt: Decimal;
        decRemAmt: Decimal;
        recCompany: Record 2000000006;
        decTtlOvlOrgAmt: Decimal;
        decTtlRemAmt: Decimal;
        CompanyInfo: Record 79;
        Email: Codeunit Email;
        EmailMessage: codeunit "Email Message";
        BodyText: BigText;
        bodytext1: Text;
        VarReceipt: list of [Text];
    begin
        //SMTPSetup.GET; //pcpl_065
        recSaleSetup.GET;
        CLEAR(TotalAmt);
        CLEAR(TotalDueAmt);
        CLEAR(TotalOverDutAmt);
        CLEAR(TotalRemAmt);
        CLEAR(email1);
        clear(VarReceipt);


        recCust.GET(CustNo);

        Month := DATE2DMY(TODAY, 2) - 1;
        IF Month = 0 THEN
            Month := 12;
        Year := DATE2DMY(TODAY, 3);
        IF Month = 12 THEN
            Year := Year - 1;

        MonLength := STRLEN(FORMAT(Month));

        IF (Month = 1) OR (Month = 3) OR (Month = 5) OR (Month = 7) OR (Month = 8) OR (Month = 10) OR (Month = 12) THEN
            Dayy := 31
        ELSE
            IF (Month = 4) OR (Month = 6) OR (Month = 9) OR (Month = 11) THEN
                Dayy := 30
            ELSE
                IF (Month = 2) AND (Year MOD 4 = 0) THEN
                    Dayy := 29
                ELSE
                    IF (Month = 2) AND (Year MOD 4 <> 0) THEN
                        Dayy := 28;
        IF MonLength = 1 THEN
            ClosDate := FORMAT(Dayy) + '.' + '0' + FORMAT(Month) + '.' + FORMAT(Year)
        ELSE
            ClosDate := FORMAT(Dayy) + '.' + FORMAT(Month) + '.' + FORMAT(Year);
        EVALUATE(Cdate, ClosDate);

        Day := DATE2DMY(TODAY, 1);
        Currmon := DATE2DMY(TODAY, 2);
        CurrYear := DATE2DMY(TODAY, 3);
        lenthDay := STRLEN(FORMAT(Day));
        LenthMonth := STRLEN(FORMAT(Currmon));
        /*// temp code for current day
        IF lenthDay = 1 THEN
          Daytext := '0'+FORMAT(Day)
        ELSE
          Daytext := FORMAT(Day);
        //*/
        IF LenthMonth = 1 THEN
            MonthTxt := '0' + FORMAT(Currmon)
        ELSE
            MonthTxt := FORMAT(Currmon);

        Daytext := format(recSaleSetup."Over Due Mail Date"); //Please enter date you want here //pcpl-065
        CurrDateText := Daytext; // Daytext + MonthTxt + FORMAT(CurrYear); //pcpl-065
        EVALUATE(currDate, CurrDateText);
        IF TODAY = currDate THEN BEGIN
            CustLedgEntry.RESET;
            CustLedgEntry.SETCURRENTKEY(Open, "Due Date");
            CustLedgEntry.SETRANGE(CustLedgEntry."Customer No.", CustNo);
            CustLedgEntry.SETRANGE(Open, TRUE);
            CustLedgEntry.SETRANGE(CustLedgEntry."Document Type", CustLedgEntry."Document Type"::Invoice);
            //CustLedgEntry.SETFILTER("Due Date", '<%1', TODAY);
            CustLedgEntry.SETFILTER(CustLedgEntry."Remaining Amount", '<>%1', 0);   //PCPL-25
            CustLedgEntry.SETAUTOCALCFIELDS("Amount (LCY)", "Remaining Amt. (LCY)");
            CustLedgEntry.SETRANGE("Posting Date", 0D, Cdate);    //PCPL-25


            CustLedgEntry.SETASCENDING("Due Date", TRUE);
            IF CustLedgEntry.FINDLAST THEN BEGIN
                // IF recSaleSetup."Over Due Mail" = '' THEN
                //     VarEmailSender := 'accounts1@ktechindia.com'
                // ELSe
                //     VarEmailSender := recSaleSetup."Over Due Mail";

                IF recCust."Accounts Mail ID" <> '' THEN
                    VarRecipaint.Add(LowerCase(recCust."K-Tech Mail Id "))//recCust."Accounts Mail ID"
                ELSE
                    VarRecipaint.Add('accounts1@ktechindia.com');



                VarRecipaint.Add(LowerCase(recCust."Accounts Mail ID"));
                email1.Add(recCust."E-Mail");


                // PCPL41
                //   VarRecipaint := CONVERTSTR(VarRecipaint, ',', ';');
                //pcpl_065  
                //  VarRecipaint.Add(recCust."Accounts Mail ID");

                //email1.Add(recSaleSetup."Over Due Mail");



                IF recCust."E-Mail" <> '' THEN
                    //  SMTP.AddCC(CONVERTSTR(recCust."E-Mail", ',', ';'));
                    bodytext1 := 'Dear Sir/Madam,';
                BodyText1 += '<br><br>';
                BodyText1 += '!!!Greetings from K-TECH!!!';
                BodyText1 += '<br><br>';
                BodyText1 += 'We would like to inform you that below invoices are due/overdue as per our books of accounts;';
                BodyText1 += '<br><br>';
                BodyText1 += '<th><B>' + recCust.Name + '</B></th>';
                BodyText1 += '</tr>';
                BodyText1 += '</table>';
                BodyText1 += '<table border ="1">';
                BodyText1 += '<th><p align="center">Posting Date</th>';
                //BodyText1 += '<th><p align="center">Document Date</th>';
                BodyText1 += '<th>Invoice No.</th>';
                BodyText1 += '<th>Due Date</th>';
                BodyText1 += '<th>Invoice Amount</th>';
                BodyText1 += '<th>Balance Amount</th>';
                BodyText1 += '<th>Not Due Amount</th>';
                BodyText1 += '<th>Due Amount</th>';
                BodyText1 += '<th>Overdue Days</th>';
                BodyText1 += '</tr>';
                //pcpl_065  

                CustLedgEntry.RESET;
                CustLedgEntry.SETCURRENTKEY(Open, "Due Date");
                CustLedgEntry.SETRANGE(CustLedgEntry."Customer No.", CustNo);
                CustLedgEntry.SETRANGE(Open, TRUE);
                CustLedgEntry.SETRANGE(CustLedgEntry."Document Type", CustLedgEntry."Document Type"::Invoice);
                //CustLedgEntry.SETFILTER("Due Date", '<%1', TODAY);
                CustLedgEntry.SETFILTER(CustLedgEntry."Remaining Amount", '<>%1', 0);   //PCPL-25
                CustLedgEntry.SETAUTOCALCFIELDS("Amount (LCY)", "Remaining Amt. (LCY)", Amount);
                CustLedgEntry.SETASCENDING("Due Date", TRUE);
                // CustLedgEntry.SETRANGE("Posting Date", 0D, Cdate); //pcpl-065   //PCPL-25




                IF CustLedgEntry.FINDSET THEN
                    REPEAT
                        CustLedgEntry.CALCFIELDS("Remaining Amount");
                        //TotalAmt += ROUND(CustLedgEntry.Amount, 0.01);  //pcpl- 010223  //ADD ROUND OFF FUNCTION
                        TotalAmt += ROUND(CustLedgEntry.Amount, 0.01);
                        TotalRemAmt += CustLedgEntry."Remaining Amount";
                        //PCPL-25
                        //Message(Format(TotalAmt));
                        CLEAR(DueAmt);
                        CLEAR(OverDueAmount);
                        CLEAR(OverdudueDays);
                        IF CustLedgEntry."Due Date" < TODAY THEN BEGIN
                            OverDueAmount := CustLedgEntry."Remaining Amount";
                            TotalOverDutAmt += CustLedgEntry."Remaining Amount";
                            OverdudueDays := (ABS(CustLedgEntry."Due Date" - TODAY));
                        END
                        ELSE BEGIN
                            DueAmt := CustLedgEntry."Remaining Amount";
                            TotalDueAmt += CustLedgEntry."Remaining Amount";
                            OverdudueDays := 0;
                        END;
                        //PCPL-25
                        //  pcpl-065  
                        BodyText1 += '<tr>';
                        BodyText1 += '<td>' + FORMAT(CustLedgEntry."Document Date", 0, '<Day,2>/<Month,2>/<Year4>') + '</td>'; //pcpl-065
                                                                                                                               // BodyText1 += '<td>' + FORMAT(CustLedgEntry."Document Date", 0, '<Day,2>/<Month,2>/<Year4>') + '</td>';  //pcpl-065
                        BodyText1 += '<td>' + FORMAT(CustLedgEntry."Document No.") + '</td>';
                        BodyText1 += '<td>' + FORMAT(CustLedgEntry."Due Date", 0, '<Day,2>/<Month,2>/<Year4>') + '</td>';

                        BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry.Amount) + '</Center></td>';
                        //remainingamt := CustLedgEntry."Remaining Amount";
                        BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry."Remaining Amount") + '</Center></td>';
                        //  pcpl_065                          
                        // pcpl_065  


                        // BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry."Remaining Amount") + '</Center></td>'; //pcpl-065
                        // BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry."Remaining Amount") + '</Center></td>';//pcpl-065
                        //pcpl-065
                        IF CustLedgEntry."Due Date" >= Today THEN
                            BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry."Remaining Amount") + '</Center></td>' //pcpl-065  //not due amt
                        else
                            BodyText1 += '<td><Center>' + '0.00' + '</Center></td>'; //pcpl-065 //not due amt

                        IF CustLedgEntry."Due Date" < Today THEN
                            BodyText1 += '<td><Center>' + FORMAT(CustLedgEntry."Remaining Amount") + '</Center></td>'//pcpl-065
                        else
                            BodyText1 += '<td><Center>' + '0.00' + '</Center></td>';//pcpl-065

                        //pcpl_065
                        if CustLedgEntry."Due Date" > Today then
                            BodyText1 += '<td><Center>' + FORMAT(ABS(0)) + '</Center></td>'
                        Else
                            BodyText1 += '<td><Center>' + FORMAT(ABS(CustLedgEntry."Due Date" - TODAY)) + '</Center></td>';
                        // pcpl_065
                        //  BodyText1 += '<td>' + FORMAT(OverdudueDays) + '</td>'; NSW007
                        BodyText1 += '</tr>';//pcpl-065 10feb
                    UNTIL (CustLedgEntry.NEXT = 0);
                BodyText1 += '<th><p align="center">Total</th>';
                BodyText1 += '<th></th>';
                BodyText1 += '<th></th>';
                BodyText1 += '<th></th>';
                txttotaamt := format(TotalAmt);
                //txttotaamt := DelChr(txttotaamt, '=', ',');
                TotalAmt := Round(TotalAmt, 0.01);
                DecTotalAmt := Round(TotalAmt) - Round(TotalAmt, 1);
                textTotalAmt := CopyStr(Format(DecTotalAmt), 2);//, 2);
                INtTotalAmt := StrLen(Format(textTotalAmt));
                IF INtTotalAmt = 2 then
                    fortextTotaAmount := '0';
                IF INtTotalAmt = 1 then
                    fortextTotaAmount := '00';
                IF INtTotalAmt = 0 then
                    fortextTotaAmount := '.00';

                //BodyText1 += '<th>' + DelChr(FORMAT(TotalAmt), '=', ',') + fortextTotaAmount + '</th>';//pcpl-065
                BodyText1 += '<th>' + DelChr(FORMAT(TotalAmt), '=') + fortextTotaAmount + '</th>';//pcpl-065

                TotalRemAmt := Round(TotalRemAmt, 0.01);
                DecTotalRemAmt := Round(TotalRemAmt) - Round(TotalRemAmt, 1);
                textRemAmt := CopyStr(Format(DecTotalRemAmt), 2);//, 2);
                INtTotalRemAmt := StrLen(Format(textRemAmt));
                IF INtTotalRemAmt = 2 then
                    fortextTotaRem := '0';
                IF INtTotalRemAmt = 1 then
                    fortextTotaRem := '00';
                IF INtTotalRemAmt = 0 then
                    fortextTotaRem := '.00';

                //BodyText1 += '<th><Center>' + DELCHR(FORMAT(TotalRemAmt), '=', ',') + fortextTotaRem + '</Center></th>';//pcpl-065
                BodyText1 += '<th><Center>' + DELCHR(FORMAT(TotalRemAmt), '=') + fortextTotaRem + '</Center></th>';//pcpl-065
                //pcpl_065                  
                //TotalDueAmt := Round(TotalDueAmt, 0.01);
                DecTotalDueAmt := Round(TotalDueAmt) - Round(TotalDueAmt, 1);
                textDueAmt := CopyStr(Format(DecTotalDueAmt), 2);//, 2);
                INtDueAmt := StrLen(Format(textDueAmt));
                IF INtDueAmt = 2 then
                    fortextDueAmount := '0';
                IF INtDueAmt = 1 then
                    fortextDueAmount := '00';
                IF INtDueAmt = 0 then
                    fortextDueAmount := '.00';

                BodyText1 += '<th><Center>' + FORMAT(TotalDueAmt) + fortextDueAmount + '</Center></th>'; //pcpl-065

                TotalOverDutAmt := Round(TotalOverDutAmt, 0.01);
                DecOverDueAmt := Round(TotalOverDutAmt, 0.01) - Round(TotalOverDutAmt, 1);
                textOverDueAmt := CopyStr(Format(DecOverDueAmt), 2);//, 2);
                INtOverDueAmt := StrLen(Format(textOverDueAmt));
                IF INtOverDueAmt = 2 then
                    fortextOverDueAmount := '0';
                IF INtOverDueAmt = 1 then
                    fortextOverDueAmount := '00';
                IF INtOverDueAmt = 0 then
                    fortextOverDueAmount := '.00';
                BodyText1 += '<th><Center>' + FORMAT(TotalOverDutAmt) + fortextOverDueAmount + '</Center></th>'; //NSW07 //pcpl-065
                //pcpl-065
                BodyText1 += '<th></th>';
                BodyText1 += '</table>';
                BodyText1 += '<br>';
                BodyText1 += 'If you have already paid the above invoice/ invoices, please share the payment details to update our books accordingly.';
                BodyText1 += '<br><br>';
                BodyText1 += 'We look forward for a healthy and prosperous business relationship with your organization & assuring you our best support & co-operation all the time.';
                BodyText1 += '<br><br>';
                BodyText1 += 'Thanking you,';
                BodyText1 += '<br><br>';
                BodyText1 += 'Warm Regards,';
                BodyText1 += '<br><br>';
                BodyText1 += 'For K-TECH (INDIA) LIMITED';
                BodyText1 += '<br>';
                BodyText1 += '(Sales Accounts)';
                BodyText1 += '<br>';
                BodyText1 += '91- 91360 15998';
                BodyText1 += '<br><br>';
                EmailMessage.Create(VarRecipaint, recCust.Name + ': Closing Balance as on ' + ClosDate, BodyText1, true, email1, email1);
                EMail.Send(Emailmessage, Enum::"Email Scenario"::Default);
            END;

        END;

    end;
}

