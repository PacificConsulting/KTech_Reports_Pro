pageextension 50029 Sales_Credit_Memo_Ext extends "Sales Credit Memo"
{
    layout
    {
        // Add changes to page layout here
        addafter("Bill-to Address")
        {
            field("Posting No. Series"; Rec."Posting No. Series")
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