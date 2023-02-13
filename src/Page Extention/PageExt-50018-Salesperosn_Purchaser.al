pageextension 50018 Salesperson_purchaser_ext extends "Salespersons/Purchasers"
{
    layout
    {
        addafter("Phone No.")
        {
            field("Purchahse/Sales Person"; Rec."Purchahse/Sales Person")
            {
                ApplicationArea = all;
            }
            field("Commission Percentage"; Rec."Commission Percentage")
            {
                ApplicationArea = all;
            }
            field("Commission Amount"; Rec."Commission Amount")
            {
                ApplicationArea = all;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}