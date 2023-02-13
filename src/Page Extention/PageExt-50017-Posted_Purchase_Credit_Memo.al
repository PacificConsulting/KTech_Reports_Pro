pageextension 50017 Posted_Purch_Credit_Memo_Ext extends "Posted Purchase Credit Memo"
{
    layout
    {
        // Add changes to page layout here
        addafter("Order Address Code")
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