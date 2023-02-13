codeunit 50004 "Send Mail"
{

    trigger OnRun()
    var
    // txtFile: Text[100];
    // Window: Dialog;
    // txtFileName: Text[100];
    // repTaxReport: Report 50020;
    // SMTP: Codeunit 400;
    // Char: Char;
    // recSalesInvHdr: Record 112;
    // smtpMailSetup: Record 409;
    // recCust: Record 18;
    begin
        // CLEAR(SMTP);
        // SMTP.CreateMessage('Dispatch',
        //                    'ktechdispatch@rediffmail.com',
        //                   '',
        //                   'Dispatch details against your Order No. ',
        //                   '', TRUE);

        // SMTP.AppendBody('<p><font face="Georgia"> <B>Dear Sir,</B> </font></p>');
        // Char := 13;
        // SMTP.AppendBody(FORMAT(Char));

        // SMTP.AppendBody('<p><font face="Georgia"><B>!!!Greetings!!!</B></font></p>');
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody('<p><font face="Georgia"><BR> Please find enclosed Tax Invoice with L.R. No./ dispatch details for your reference & records.</BR></font></p>');
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody('<p><font face="Georgia"><BR> For K-TECH (INDIA) LIMITED</BR></font></p>');
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody('<p><font face="Georgia"><BR> (Logistics Team)</BR></font></p>');
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AppendBody(FORMAT(Char));
        // SMTP.AddRecipients('yogender.rana@pacificconsulting.in');
        // SMTP.Send;
    end;


    procedure SendPDFinMail(DocNo: Code[20])
    var
        txtFile: Text[100];
        Window: Dialog;
        txtFileName: Text[100];
        Char: Char;
        recSalesInvHdr: Record 112;
        Recref: RecordRef;
        recCust: Record 18;
        TempBlob: Codeunit "Temp Blob";
        OutStr: OutStream;
        Instr: InStream;
        EMail: Codeunit Email;
        Emailmessage: Codeunit "Email Message";
    begin
        recSalesInvHdr.RESET;
        recSalesInvHdr.SETRANGE("No.", DocNo);
        IF recSalesInvHdr.FINDFIRST THEN;
        recCust.GET(recSalesInvHdr."Sell-to Customer No.");
        Window.OPEN(
                     'Sending Mail              #1######\');

        Emailmessage.Create(recCust."E-Mail", 'Dispatch details against your Order No. ' + recSalesInvHdr."Customer Order No." + ' Dated ' + FORMAT(recSalesInvHdr."Order Date"), '', true);
        Recref.GetTable(recSalesInvHdr);
        TempBlob.CreateOutStream(OutStr);
        Report.SaveAs(Report::"Tax Sales Invoice GST", '', ReportFormat::Pdf, OutStr, Recref);
        TempBlob.CreateInStream(InStr);
        Emailmessage.AddAttachment('Tax Sales Invoice GST.pdf', '.pdf', InStr);
        // addspecificationatachment := 'Attachment: Item Specification';



        Emailmessage.AppendToBody('<p><font face="Georgia">Dear <B>Sir,</B></font></p>');
        Char := 13;
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"> <B>!!!Greetings!!!</B></font></p>');
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Please find enclosed Tax Invoice with L.R. No./ dispatch details for your reference & records.</BR></font></p>');
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Thanking you,</BR></font></p>');
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Warm Regards,</BR></font></p>');
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR><B>For K-TECH (INDIA) LIMITED</B></BR></font></p>');

        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR><B>(Logistic Team)</B></BR></font></p>');
        // Emailmessage.AppendToBody('<p><font face="Georgia" style="color:red;"><BR><B>DO NOT REPLY MESSAGE : Please do not mark any mail to this e-mail ID as this mail box is not monitored.</B></BR></font></p>'); //pcpl-065//PCPL
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        // Emailmessage.AppendToBody(recCust."E-Mail"); //pcpl-065
        Window.UPDATE(1, STRSUBSTNO('%1', 'Mail Sent'));
        EMail.Send(Emailmessage, Enum::"Email Scenario"::Default);
        Window.CLOSE;

    END;




    procedure SendFSRPDF(DocNo: Code[20])
    var
        txtFile: Text[100];
        Window: Dialog;
        txtFileName: Text[100];
        repTaxReport: Report 50017;
        Char: Char;
        recSalesInvHdr: Record 112;
        recCust: Record 18;
        TempBlob: Codeunit "Temp Blob";
        OutStr: OutStream;
        Instr: InStream;
        EMail: Codeunit Email;
        Emailmessage: Codeunit "Email Message";
        Recref: RecordRef;
    begin
        //PCPL-25

        recSalesInvHdr.RESET;
        recSalesInvHdr.SETRANGE("No.", DocNo);
        IF recSalesInvHdr.FINDFIRST THEN;
        recCust.GET(recSalesInvHdr."Sell-to Customer No.");
        Window.OPEN(
                     'Sending Mail              #1######\');


        Emailmessage.Create(recCust."E-Mail", 'Dispatch details against your Order No. ' + recSalesInvHdr."Customer Order No." + ' Dated ' + FORMAT(recSalesInvHdr."Order Date"), '', true);
        Recref.GetTable(recSalesInvHdr);
        TempBlob.CreateOutStream(OutStr);
        Report.SaveAs(Report::"FSR Report Replica2 NEW", '', ReportFormat::Pdf, OutStr, Recref);
        TempBlob.CreateInStream(InStr);
        Emailmessage.AddAttachment('FSR Report.pdf', '.pdf', InStr);

        Emailmessage.AppendToBody('<p><font face="Georgia">Dear <B>Sir,</B></font></p>');
        Char := 13;
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"> <B>!!!Greetings!!!</B></font></p>');
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Please find enclosed FSR Invoice with L.R. No./ dispatch details for your reference & records.</BR></font></p>');
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Thanking you,</BR></font></p>');
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR>Warm Regards,</BR></font></p>');
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR><B>For K-TECH (INDIA) LIMITED</B></BR></font></p>');

        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody('<p><font face="Georgia"><BR><B>(Logistic Team)</B></BR></font></p>');
        Emailmessage.AppendToBody('<p><font face="Georgia" style="color:red;"><BR><B>DO NOT REPLY MESSAGE : Please do not mark any mail to this e-mail ID as this mail box is not monitored.</B></BR></font></p>');//pcpl-065 //PCPL
        Emailmessage.AppendToBody(FORMAT(Char));
        Emailmessage.AppendToBody(FORMAT(Char));
        Window.UPDATE(1, STRSUBSTNO('%1', 'Mail Sent'));
        EMail.Send(Emailmessage, Enum::"Email Scenario"::Default);
        Window.CLOSE;

    END;
    //PCPL-25

}

