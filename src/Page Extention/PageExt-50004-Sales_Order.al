pageextension 50004 Sales_Order_Ext extends "Sales Order"
{
    layout
    {
        addafter("Sell-to Customer No.")
        {
            field("Product Application Field"; Rec."Product Application Field")
            {
                ApplicationArea = all;
            }
            field("CC Attched"; Rec."CC Attched")
            {
                ApplicationArea = all;
            }
            field("Booking To"; Rec."Booking To")
            {
                ApplicationArea = all;
            }
            field("Do No."; Rec."Do No.")
            {
                ApplicationArea = all;
            }
            field("Customer Order No."; Rec."Customer Order No.")
            {
                ApplicationArea = all;
            }
            field("Posting No."; Rec."Posting No.")
            {
                ApplicationArea = all;
                Editable = true;
            }
            field("Posting No. Series"; Rec."Posting No. Series")
            {
                ApplicationArea = all;
            }


        }

        // Add changes to page layout here
    }

    actions
    {
        addafter(Approval)
        {
            action("Delivery Order GST")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Delivery Order GST';
                trigger OnAction()
                var
                    SH: Record "Sales Header";
                begin
                    SH.RESET;
                    SH.SETRANGE(SH."No.", rec."No.");
                    REPORT.RUNMODAL(50015, TRUE, TRUE, SH);

                end;
            }
            action("Panding Order")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                Image = Print;
                Caption = 'Pending Order';
                trigger OnAction()
                var
                    SH: Record "Sales Header";
                begin
                    SH.RESET;
                    SH.SETRANGE("No.", rec."No.");
                    REPORT.RUNMODAL(50032, TRUE, TRUE, SH);

                end;
            }

        }

    }

    var
        myInt: Integer;
}