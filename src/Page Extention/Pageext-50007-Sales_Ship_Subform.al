pageextension 50007 Sales_ship_Subform extends "Posted Sales Shpt. Subform"
{
    layout
    {
        addafter("Location Code")
        {
            field("No. of Packages"; Rec."No. of Packages")
            {
                ApplicationArea = all;
            }
            field(Purity; Rec.Purity)
            {
                ApplicationArea = all;
            }
            field("Marks and Nos/Container No"; Rec."Marks and Nos/Container No")
            {
                ApplicationArea = all;
            }
            field("No and Kind of Package"; Rec."No and Kind of Package")
            {
                ApplicationArea = all;
            }
            field("Customer Order No."; Rec."Customer Order No.")
            {
                ApplicationArea = all;
            }
            field("Identification Mark"; Rec."Identification Mark")
            {
                ApplicationArea = all;
            }


        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}