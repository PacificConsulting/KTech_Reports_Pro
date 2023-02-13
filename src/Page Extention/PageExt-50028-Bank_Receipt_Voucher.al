pageextension 50028 Bank_Receipt_Voucher_Ext extends "Bank Receipt Voucher"
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