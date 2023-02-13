pageextension 50026 Journal_Voucher_Ext extends "Journal Voucher"
{
    layout
    {
        // Add changes to page layout here
        addafter("Bal. Account No.")
        {
            field("Message to Recipient"; Rec."Message to Recipient")
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