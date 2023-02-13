pageextension 50001 Sales_Quote_Ext extends "Sales Quote"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addafter(Approval)
        {

            action("Proforma Invoice GST")
            {

                ApplicationArea = ALL;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Proforma Invoice GST';
                trigger OnAction()
                var
                    myInt: Integer;
                    SH: Record "Sales Header";

                begin
                    SH.Reset();
                    SH.SETRANGE("No.", rec."No.");
                    IF SH.FindFirst THEN
                        REPORT.RUNMODAL(50018, TRUE, TRUE, SH);
                end;







            }
            // Add changes to page actions here
        }
    }
    var
        myInt: Integer;

}