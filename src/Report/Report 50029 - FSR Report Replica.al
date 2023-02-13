report 50029 "FSR Report Replica"
{
    // version PCPL-0040

    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\FSR Report Replica.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            RequestFilterFields = "No.";
            column(designt; designt)
            {
            }
            column(DirectNo; DirectNo)
            {
            }
            column(MobileNo; MobileNo)
            {
            }
            column(No_SalesHeader; "Sales Header"."No.")
            {
            }
            column(NAME; NAME)
            {
            }
            column(PostingDate_SalesHeader; "Sales Header"."Posting Date")
            {
            }
            column(Company_Email; CompanyInformation."E-Mail")
            {
            }
            column(PhoneNo; CompanyInformation."Phone No. 2")
            {
            }
            column(FaxNo; CompanyInformation."Fax No.")
            {
            }
            column(CustAdd2; CustAdd2)
            {
            }
            column(Referenece_SalesHeader; "Sales Header".Referenece)
            {
            }
            column(ModeOfCommunication_SalesHeader; "Sales Header"."Mode Of Communication")
            {
            }
            column(ProductApplicationField_SalesHeader; "Sales Header"."Product Application Field")
            {
            }
            column(CustAdd; CustAdd)
            {
            }
            column(Postcode; Postcode)
            {
            }
            column(PhNo; PhNo)
            {
            }
            column(IssueNo_SalesHeader; "Sales Header"."Issue No")
            {
            }
            column(IssueDate_SalesHeader; "Sales Header"."Issue Date")
            {
            }
            column(DateofInquiry_SalesHeader; "Sales Header"."Date of Inquiry")
            {
            }
            column(RevisionNo_SalesHeader; "Sales Header"."Revision No")
            {
            }
            column(RevisionDate_SalesHeader; "Sales Header"."Revision Date")
            {
            }
            column(TransportName_SalesHeader; "Sales Header"."Transport Name")
            {
            }
            column(CourierName_SalesHeader; "Sales Header"."Courier Name")
            {
            }
            column(AWBNo_SalesHeader; "Sales Header"."AWB No.")
            {
            }
            column(LRRRNo_SalesHeader; "Sales Header"."LR/RR No.")
            {
            }
            column(EmailId; EmailId)
            {
            }
            column(contact; contact)
            {
            }
            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                column(UnitofMeasure_SalesLine; "Sales Line"."Unit of Measure")
                {
                }
                column(Quantity_SalesLine; "Sales Line".Quantity)
                {
                }
                column(No_SalesLine; "Sales Line"."No.")
                {
                }
                column(Sr; Sr)
                {
                }
                column(Desc; Desc)
                {
                }
                column(TechFunc; TechFunc)
                {
                }
                column(PackingSize_SalesLine; "Sales Line"."Packing Size")
                {
                }
                column(UnitsperParcel_SalesLine; "Sales Line"."Units per Parcel")
                {
                }
                column(NoofPackages_SalesLine; "Sales Line"."No. of Packages")
                {
                }
                column(IdentificationMark_SalesLine; "Sales Line"."Identification Mark")
                {
                }



                trigger OnAfterGetRecord();
                begin
                    Sr := Sr + 1;
                    CLEAR(TechFunc);
                    IF "Sales Line".Type = "Sales Line".Type::Item THEN BEGIN
                        RecItem.RESET;
                        RecItem.SETRANGE(RecItem."No.", "Sales Line"."No.");
                        IF RecItem.FINDFIRST THEN BEGIN
                            Desc := RecItem.Description;
                            TechFunc := RecItem."Technical Function/s";
                        END;
                    END
                    ELSE
                        IF "Sales Line".Type = "Sales Line".Type::"G/L Account" THEN BEGIN
                            GLAcc.RESET;
                            GLAcc.SETRANGE(GLAcc."No.", "Sales Line"."No.");
                            IF GLAcc.FINDFIRST THEN BEGIN
                                Desc := GLAcc.Name;
                            END;
                        END;
                    //PCPL-25
                    CLEAR(LotNo);
                    /*TrackingSpecification.RESET;
                    TrackingSpecification.SETRANGE(TrackingSpecification."Item No.","Sales Invoice Line"."No.");
                    TrackingSpecification.SETRANGE(TrackingSpecification."Quantity (Base)","Sales Invoice Line"."Quantity (Base)");
                    IF TrackingSpecification.FINDFIRST THEN BEGIN
                      LotNo += TrackingSpecification."Lot No.";
                    END;*/




                    ItemLedgerEntry.RESET;
                    ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Item No.", "Sales Line"."No.");
                    IF ItemLedgerEntry.FINDFIRST THEN BEGIN
                        LotNo := ItemLedgerEntry."Lot No.";
                    END;
                    //PCPL-25






                end;

                trigger OnPreDataItem();
                begin
                    Sr := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                recCust.RESET;
                recCust.SETRANGE(recCust."No.", "Sales Header"."Sell-to Customer No.");
                IF recCust.FINDFIRST THEN BEGIN
                    NAME := recCust.Name;
                    CustAdd := recCust.Address;
                    CustAdd2 := recCust."Address 2";
                    contact := recCust.Contact;
                    PhNo := recCust."Phone No.";
                    EmailId := recCust."E-Mail";
                    Postcode := recCust."Post Code";
                    MobileNo := recCust."Mobile no.";
                    DirectNo := recCust."Direct No";
                    designt := recCust.Designation;
                END;



            end;

        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        CompanyInformation.GET;
    end;

    var
        CompanyInformation: Record 79;
        recCust: Record 18;
        Sr: Integer;
        CustAdd: Text[50];
        contact: Text;
        PhNo: Text;
        EmailId: Text[80];
        RecItem: Record 27;
        Desc: Text[50];
        CustAdd2: Text[50];
        GLAcc: Record 15;
        TechFunc: Text;
        TrackingSpecification: Record 336;
        LotNo: Code[20];
        ItemLedgerEntry: Record 32;
        NAME: Text[100];
        Postcode: Code[20];
        MobileNo: Code[20];
        DirectNo: Code[20];
        designt: Text;
}

