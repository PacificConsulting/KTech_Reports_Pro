pageextension 50003 Transfer_Order_Ext extends "Transfer Order"
{
    layout
    {
        addbefore("Transfer-from Code")
        {
            // field("No.";Rec."No.")
            // {

            // }
        }
        // Add changes to page layout here
    }

    actions
    {
        addafter("Co&mments")
        {
            action("Interunit Transfer")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Interunit Transfer';
                trigger OnAction()
                var
                    TransferHeader: Record "Transfer Header";
                begin
                    TransferHeader.RESET;
                    TransferHeader.SETRANGE("No.", REC."No.");
                    IF TransferHeader.FINDFIRST THEN
                        REPORT.RUNMODAL(50021, TRUE, TRUE, TransferHeader);
                end;
            }

        }
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}