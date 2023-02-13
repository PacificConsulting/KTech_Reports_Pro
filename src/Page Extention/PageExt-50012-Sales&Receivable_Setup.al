pageextension 50012 MyExtension extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Number Series")
        {
            field("FSR No."; Rec."FSR No.")
            {
                ApplicationArea = all;

            }
            field("Over Due Mail"; Rec."Over Due Mail")
            {
                ApplicationArea = all;
            }
            field(Courier; Rec.Courier)
            {
                ApplicationArea = all;
            }
            field(Insurance; Rec.Insurance)
            {
                ApplicationArea = all;
            }
            field(Frieght; Rec.Frieght)
            {
                ApplicationArea = all;
            }
            field("Over Due Mail Date"; Rec."Over Due Mail Date")
            {
                ApplicationArea = all;
            }





        }
    }
    // Add changes to page layout here


    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}