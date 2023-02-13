report 50032 "Pending Order"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    //DefaultRenderingLayout = LayoutName;
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\Pending Order2.rdl';

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            column(Order_Date; "Order Date")
            {

            }
            column(No_; "No.")
            {

            }
            column(Sell_to_Customer_Name; "Sell-to Customer Name")
            {

            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemTableView = where(type = const(item));
                DataItemLink = "Document No." = field("No.");
                column(Description; Description)
                {

                }
                column(Quantity; Quantity)
                {

                }
                column(Qty__to_Ship; "Qty. to Ship")
                {

                }
                column(Outstanding_Quantity; "Outstanding Quantity")
                {

                }

                column(Outstanding_Amount; "Outstanding Amount")
                {

                }
                column(Unit_Price; "Unit Price")
                {

                }
                column(Units_per_Parcel; "Units per Parcel")
                {

                }
                column(Requested_Delivery_Date; "Requested Delivery Date")
                {

                }
                // trigger OnAfterGetRecord()
                // var
                //     myInt: Integer;
                // begin

                // end;
            }
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    // rendering
    // {
    //     layout(LayoutName)
    //     {
    //         Type = RDLC;
    //         LayoutFile = 'mylayout.rdl';
    //     }
    // }

    var
        myInt: Integer;
}