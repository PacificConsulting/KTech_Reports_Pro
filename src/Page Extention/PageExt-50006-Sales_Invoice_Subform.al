pageextension 50006 Sales_Invoice_Subform extends "Posted Sales Invoice Subform"
{
    layout
    {
        addafter("Line Amount")
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

            field("Packing Size"; Rec."Packing Size")
            {
                ApplicationArea = all;
            }
            field("Technical Function/s"; Rec."Technical Function/s")
            {
                ApplicationArea = all;
            }
            field("Commission Amount"; Rec."Commission Amount")
            {
                ApplicationArea = all;
            }
            field("Commission Percentage"; Rec."Commission Percentage")
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