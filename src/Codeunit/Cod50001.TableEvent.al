codeunit 50001 "Table Event"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, database::"Sales Header", 'OnAfterGetNoSeriesCode', '', false, false)]
    local procedure OnAfterGetNoSeriesCode(var SalesHeader: Record "Sales Header"; SalesReceivablesSetup: Record "Sales & Receivables Setup"; var NoSeriesCode: Code[20])
    begin
        IF SalesHeader.FSR then begin
            SalesReceivablesSetup.TestField("FSR No.");
            case SalesHeader."Document Type" of
                SalesHeader."Document Type"::Order:
                    NoSeriesCode := SalesReceivablesSetup."FSR No.";
            end;
        end;
    end;

    var
        myInt: Integer;
}