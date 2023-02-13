pageextension 50022 Customer_Card_Ext extends "Customer Card"
{
    layout
    {
        addafter("Search Name")
        {
            field("Parent Customer Code"; Rec."Parent Customer Code")
            {
                ApplicationArea = all;
            }
            field("Credit limit of Parent"; Rec."Credit limit of Parent")
            {
                ApplicationArea = all;
            }
            field(Application; Rec.Application)
            {
                ApplicationArea = all;
            }
            field("Mobile no."; Rec."Mobile no.")
            {
                ApplicationArea = all;
            }
            field("Direct No"; Rec."Direct No")
            {
                ApplicationArea = all;
            }
            field(Designation; Rec.Designation)
            {
                ApplicationArea = all;
            }
            field("Accounts Mail ID"; Rec."Accounts Mail ID")
            {
                ApplicationArea = all;
            }
            field("Outstanding Mail"; Rec."Outstanding Mail")
            {
                ApplicationArea = all;
            }
            field("URN No."; Rec."URN No.")
            {
                ApplicationArea = all;
            }
            field("K-Tech Mail Id "; Rec."K-Tech Mail Id ")
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