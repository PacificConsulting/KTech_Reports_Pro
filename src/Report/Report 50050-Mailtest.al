report 50050 "Test Mail"
{
    //UsageCategory = ReportsAndAnalysis;
    //ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    ProcessingOnly = true;




    rendering
    {
        layout(LayoutName)
        {
            Type = RDLC;
            LayoutFile = 'mylayout.rdl';
        }
    }
    trigger OnPostReport()
    Begin
        EmailMessage.Create('nirmal.wagh@pacificconsulting.in;tejasvi.jadhav@pacificconsulting.in', 'Test Mail', 'Body', true);
        // EmailMessage.AddRecipient(Enum::"Email Recipient Type"::Cc, 'niwagh16@gmail.com');
        Email.Send(EmailMessage, Enum::"Email Scenario"::Default);
        Message('mail sent');//
    End;

    var
        myInt: Integer;
        Email: Codeunit Email;
        EmailMessage: codeunit "Email Message";
        bodytext1: Text;
        VarReceipt: Text;
}