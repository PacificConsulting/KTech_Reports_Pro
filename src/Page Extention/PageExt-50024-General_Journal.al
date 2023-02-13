pageextension 50024 General_Journal_Ext extends "General Journal"
{
    layout
    {
        // Add changes to page layout here
        addafter("Document Type")
        {
            field("Due Date"; Rec."Due Date")
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