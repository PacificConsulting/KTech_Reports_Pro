pageextension 50010 Sales_Quote_subform extends "Sales Quote Subform"
{
    layout
    {
        addafter("Units per Parcel")
        {
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
            {
                ApplicationArea = all;
            }
            field("No. of Packages"; Rec."No. of Packages")
            {
                ApplicationArea = all;

            }
            field(Purity; Rec.Purity)
            {
                ApplicationArea = all;
            }
            field(Unit; Rec.Unit)
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

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}