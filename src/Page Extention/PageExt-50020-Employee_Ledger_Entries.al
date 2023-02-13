pageextension 50020 Vednor_Ledger_Entries_Ext extends "Employee Ledger Entries"
{
    layout
    {
        addafter("Original Amount")
        {
            field("Debit Amount"; Rec."Debit Amount")
            {
                ApplicationArea = all;
            }
            field("Credit Amount"; Rec."Credit Amount")
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