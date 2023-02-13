pageextension 50023 Ship_To_Address_Ext extends "Ship-to Address"
{
    layout
    {

        addafter(Address)
        {
            field("E.C.C No"; Rec."E.C.C No")
            {
                ApplicationArea = all;
            }
            field("T.I.N. No"; Rec."T.I.N. No")
            {
                ApplicationArea = all;
            }
            field("VAT No"; Rec."VAT No")
            {
                ApplicationArea = all;
            }
            field("C.S.T.No"; Rec."C.S.T.No")
            {
                ApplicationArea = all;
            }
            field("Other Consignee"; Rec."Other Consignee")
            {
                ApplicationArea = all;
            }
            field("P.A.N.No."; Rec."P.A.N.No.")
            {
                ApplicationArea = all;
                Caption = 'Ship To P.A.N.No.';
            }

            field("Ship To GST Registration No."; Rec."Ship To GST Registration No.")
            {
                ApplicationArea = all;
            }
        }

    }

    actions
    {
        // Adcd changes to page actions here

    }

    var
        myInt: Integer;

}
