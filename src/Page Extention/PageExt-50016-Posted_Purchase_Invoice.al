pageextension 50016 Posted_Purchase_Invoice_Ext extends "Posted Purchase Invoice"
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