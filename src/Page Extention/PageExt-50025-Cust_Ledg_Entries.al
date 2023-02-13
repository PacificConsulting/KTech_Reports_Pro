pageextension 50025 Cust_Ledg_Entries_Ext extends "Customer Ledger Entries"
{
    layout
    {
        addafter(Amount)
        {
            field("Document Date"; Rec."Document Date")
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