pageextension 50009 Posted_pur_recpt_subform extends "Posted Purchase Rcpt. Subform"
{
    layout
    {
        addafter(Quantity)
        {
            field("Alternate UOM Qty"; Rec."Alternate UOM Qty")
            {
                ApplicationArea = all;
            }
            field("Original PO"; Rec."Original PO")
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