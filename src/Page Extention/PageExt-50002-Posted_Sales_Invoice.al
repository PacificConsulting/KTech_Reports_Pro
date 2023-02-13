pageextension 50002 Posted_Sales_Invoice_Extn extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("CC Attched"; Rec."CC Attched")
            {
                ApplicationArea = all;
            }
            field("Booking To"; Rec."Booking To")
            {
                ApplicationArea = all;
            }
            field("Customer Order No."; Rec."Customer Order No.")
            {
                ApplicationArea = all;
            }
            field("Do No."; Rec."Do No.")
            {
                ApplicationArea = all;
            }

        }
        // Add changes to page layout here
    }

    actions
    {
        addfirst(processing)
        {
            action("Tax Invoice")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Tax Invoice';
                trigger OnAction()
                var
                    SIH: Record "Sales Invoice Header";
                begin
                    SIH.Reset();
                    SIH.SetRange("No.", rec."No.");
                    if SIH.FindFirst then
                        REPORT.RUNMODAL(50017, TRUE, TRUE, SIH);


                end;
            }
            action("FSR Report Replica2 NEW")
            {
                ApplicationArea = ALL;
                Promoted = TRUE;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'FSR Report Replica2 NEW';
                trigger OnAction()
                var
                    SIH: Record "Sales Invoice Header";
                begin
                    SIH.RESET;
                    SIH.SETRANGE(SIH."No.", rec."No.");
                    REPORT.RUNMODAL(50031, TRUE, TRUE, SIH);

                end;
            }
            action("Send Tax Inv in Mail")
            {
                ApplicationArea = ALL;
                Promoted = TRUE;
                PromotedCategory = Process;
                Image = Email;
                Caption = 'Send Tax Inv in Mail';
                trigger OnAction()
                var
                    txtFile: Text[100];
                    Window: Dialog;
                    txtFileName: Text[100];
                    repTaxReport: Report 50017;
                    EMail: Codeunit Email;
                    Emailmessage: Codeunit "Email Message";
                    Char: Char;
                    recSalesInvHdr: Record 112;
                    Recref: RecordRef;
                    recCust: Record 18;
                    TempBlob: Codeunit "Temp Blob";
                    OutStr: OutStream;
                    Instr: InStream;
                    SendMail: Codeunit 50004;
                begin
                    Clear(SendMail);
                    SendMail.SendPDFinMail(Rec."No.");
                    /*//PCPL/NSW/07  15Nov22
                    recSalesInvHdr.RESET;
                    recSalesInvHdr.SETRANGE("No.", rec."No.");
                    IF recSalesInvHdr.FINDFIRST THEN;
                    IF recCust.GET(recSalesInvHdr."Sell-to Customer No.") then;
                    Window.OPEN(
                     'Sending Mail...              #1######\');

                    Emailmessage.Create(recCust."E-Mail", 'Dispatch details against your Order No. ' + recSalesInvHdr."Customer Order No." + ' Dated ' + FORMAT(recSalesInvHdr."Order Date"), '', true);
                    Recref.GetTable(recSalesInvHdr);
                    TempBlob.CreateOutStream(OutStr);
                    Report.SaveAs(Report::"Tax Sales Invoice GST", '', ReportFormat::Pdf, OutStr, Recref);
                    TempBlob.CreateInStream(InStr);
                    Emailmessage.AddAttachment('Tax Sales Invoice GST.pdf', '.pdf', InStr);


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
                    Emailmessage.AppendToBody('<p><font face="Georgia" style="color:red;"><BR><B>DO NOT REPLY MESSAGE : Please do not mark any mail to this e-mail ID as this mail box is not monitored.</B></BR></font></p>');//PCPL
                    Emailmessage.AppendToBody(FORMAT(Char));
                    Emailmessage.AppendToBody(FORMAT(Char));
                    Window.UPDATE(1, STRSUBSTNO('%1', 'Mail Sent'));

                    EMail.Send(Emailmessage, Enum::"Email Scenario"::Default);
                    Window.CLOSE;
                    Message('Mail sent successfully!!!');
                    */

                END;

            }
            action("Send FSR pdf in Mail")
            {
                ApplicationArea = ALL;
                Promoted = TRUE;
                PromotedCategory = Process;
                Image = Email;
                Caption = 'Send FSR pdf in Mail';
                trigger OnAction()
                var
                    SendMail: Codeunit 50004;
                begin
                    Clear(SendMail);
                    SendMail.SendFSRPDF(Rec."No.");
                end;
            }
            Action("Test Mail Action")
            {
                ApplicationArea = ALL;
                Promoted = TRUE;
                PromotedCategory = Process;
                Image = Email;
                Caption = 'Test Mail PDF';
                Visible = false;
                trigger OnAction()
                var
                    SendMail: Codeunit 50004;
                    txtFile: Text[100];
                    Window: Dialog;
                    txtFileName: Text[100];
                    repTaxReport: Report 50017;
                    EMail: Codeunit Email;
                    Emailmessage: Codeunit "Email Message";
                    Char: Char;
                    recSalesInvHdr: Record 112;
                    Recref: RecordRef;
                    recCust: Record 18;
                    TempBlob: Codeunit "Temp Blob";
                    OutStr: OutStream;
                    Instr: InStream;
                    bodytext: Text;

                begin
                    //PCPL/NSW/07  15Nov22
                    recSalesInvHdr.RESET;
                    recSalesInvHdr.SETRANGE("No.", rec."No.");
                    IF recSalesInvHdr.FINDFIRST THEN;
                    IF recCust.GET(recSalesInvHdr."Sell-to Customer No.") then;
                    Window.OPEN(
                     'Sending Mail...              #1######\');

                    bodytext := '<p><font face="Georgia">Dear <B>Sir,</B></font></p>';
                    Char := 13;
                    bodytext += (FORMAT(Char));
                    bodytext += '<p><font face="Georgia"><BR><B>(Logistic Team)</B></BR></font></p>';
                    bodytext += '<p><font face="Georgia" style="color:red;"><BR><B>DO NOT REPLY MESSAGE : Please do not mark any mail to this e-mail ID as this mail box is not monitored.</B></BR></font></p>';//PCPL
                    bodytext += (FORMAT(Char));
                    Window.UPDATE(1, STRSUBSTNO('%1', 'Mail Sent'));

                    Emailmessage.Create(recCust."E-Mail", 'Dispatch details against your Order No. ' + recSalesInvHdr."Customer Order No." + ' Dated ' + FORMAT(recSalesInvHdr."Order Date"), bodytext, true);

                    Recref.GetTable(recSalesInvHdr);
                    TempBlob.CreateOutStream(OutStr);
                    Report.SaveAs(Report::"Tax Sales Invoice GST", '', ReportFormat::Pdf, OutStr, Recref);
                    TempBlob.CreateInStream(InStr);
                    Emailmessage.AddAttachment('Tax Sales Invoice GST.pdf', '.pdf', InStr);


                    EMail.Send(Emailmessage, Enum::"Email Scenario"::Default);
                    Window.CLOSE;
                    Message('Mail sent successfully!!!');


                end;
            }
        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}