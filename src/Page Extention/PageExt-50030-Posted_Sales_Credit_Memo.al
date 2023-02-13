pageextension 50030 Posted_Sales_Credit_Memo_Ext extends "Posted Sales Credit Memo"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addafter(Print)
        {
            action("sales Credit_Memo")
            {
                ApplicationArea = ALL;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Sales Cr.Memo';
                trigger OnAction()
                var
                    myInt: Integer;
                    SCMH: Record "Sales Cr.Memo Header";

                begin
                    SCMH.Reset();
                    SCMH.SETRANGE("No.", rec."No.");
                    IF SCMH.FindFirst THEN
                        REPORT.RUNMODAL(50051, TRUE, TRUE, SCMH);
                end;
            }

        }
    }

    var
        myInt: Integer;
}