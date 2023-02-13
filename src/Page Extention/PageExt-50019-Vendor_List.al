pageextension 50019 Vendor_List_Ext extends "Vendor List"
{
    layout
    {
        addafter("Search Name")
        {
            field("P.A.N. No."; Rec."P.A.N. No.")
            {
                ApplicationArea = all;
            }
            field("GST Registration No."; Rec."GST Registration No.")
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