pageextension 50008 Purchaseorder_subform extends "Purchase Order Subform"
{
    layout
    {
        addafter("GST Group Code")
        {

            field("Alternate UOM Qty"; Rec."Alternate UOM Qty")
            {
                ApplicationArea = all;
            }
            field("Original PO"; Rec."Original PO")
            {
                ApplicationArea = all;
            }
            field("No. of Packs"; Rec."No. of Packs")
            {
                ApplicationArea = all;
            }
            field("Pack Size"; Rec."Pack Size")
            {
                ApplicationArea = all;
            }
        }
        addafter(Quantity)
        {
            field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
            {
                ApplicationArea = all;
            }
            field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
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