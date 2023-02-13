pageextension 50021 Item_Card_Ext extends "Item Card"
{
    layout
    {
        addafter("Base Unit of Measure")
        {
            field("QC Check"; Rec."QC Check")
            {
                ApplicationArea = all;
            }
            field(Synonym; Rec.Synonym)
            {
                ApplicationArea = all;
            }
            field("CAS No."; Rec."CAS No.")
            {
                ApplicationArea = all;
            }
            field("Mol. Formula"; Rec."Mol. Formula")
            {
                ApplicationArea = all;
            }
            field("Mol. Weight"; Rec."Mol. Weight")
            {
                ApplicationArea = all;
            }
            field("Mol. Structure"; Rec."Mol. Structure")
            {
                ApplicationArea = all;
            }
            field("Rejected Inventory"; Rec."Rejected Inventory")
            {
                ApplicationArea = all;
            }
            field("Accepted Inventory"; Rec."Accepted Inventory")
            {
                ApplicationArea = all;
            }
            field("Quarantine Inventory"; Rec."Quarantine Inventory")
            {
                ApplicationArea = all;
            }
            field("Responsibility Center"; Rec."Responsibility Center")
            {
                ApplicationArea = all;
            }
            field(Tolerance; Rec.Tolerance)
            {
                ApplicationArea = all;
            }
            field(" Blocked Type"; Rec." Blocked Type")
            {
                ApplicationArea = all;
            }
            field("Main Item"; Rec."Main Item")
            {
                ApplicationArea = all;
            }
            field("Main Item No."; Rec."Main Item No.")
            {
                ApplicationArea = all;
            }
            field("Pack Size"; Rec."Pack Size")
            {
                ApplicationArea = all;
            }
            field("Technical Function/s"; Rec."Technical Function/s")
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