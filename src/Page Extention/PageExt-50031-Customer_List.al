pageextension 50031 Customer_List_Ext extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Address; Rec.Address)
            {
                ApplicationArea = all;
            }
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = all;
            }

            field(City; Rec.City)
            {
                ApplicationArea = all;
            }

            field("State Code"; Rec."State Code")
            {
                ApplicationArea = all;
            }
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = all;
            }
            field("P.A.N. No."; Rec."P.A.N. No.")
            {
                ApplicationArea = all;
            }
            field("GST Registration No."; Rec."GST Registration No.")
            {
                ApplicationArea = all;
            }
            field("GST Registration Type"; Rec."GST Registration Type")
            {
                ApplicationArea = all;
            }
            field("GST Customer Type"; Rec."GST Customer Type")
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