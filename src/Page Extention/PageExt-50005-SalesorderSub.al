pageextension 50005 Sales_order_sunform extends "Sales Order Subform"
{
    layout
    {

        addafter("GST Group Type")
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
            field("Identification Mark"; Rec."Identification Mark")
            {
                ApplicationArea = all;



            }




        }


        addafter("Item Reference No.")
        {
            field("Customer Price Group"; Rec."Customer Price Group")
            {
                ApplicationArea = all;
                Visible = true;
                Editable = true;
            }
        }




    }

    actions
    {

    }

    var
        myInt: Integer;
}