pageextension 50015 Posted_Purchase_Receipt_Ext extends "Posted Purchase Receipt"
{
    layout
    {
        // Add changes to page layout here
        addafter("Order No.")
        {
            field(Designation; Rec.Designation)
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