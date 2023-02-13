pageextension 50014 Purchase_Order_Ext extends "Purchase Order"
{
    layout
    {

        // Add changes to page layout here
        modify("Quote No.")
        {
            Editable = true;
        }
        addafter("Order Date")
        {
            field(Designation; Rec.Designation)
            {
                ApplicationArea = all;
            }
        }
    }

    actions
    {
        addafter(Approval)
        {
            action("PO GST")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'PO GST';
                trigger OnAction()
                var
                    PH: Record "Purchase Header";
                begin
                    PH.RESET;
                    PH.SETRANGE(PH."No.", rec."No.");
                    REPORT.RUNMODAL(50022, TRUE, TRUE, PH);
                end;
            }
        }

        // Add changes to page actions here
    }

    var
        myInt: Integer;
}