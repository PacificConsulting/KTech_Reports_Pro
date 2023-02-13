report 50031 "FSR Report Replica2 NEW"
{
    // version PCPL-0040

    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\FSR Report Replica2 NEW.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
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
            column(No_SalesHeader; "Sales Invoice Header"."No.")
            {
            }
            column(NAME; NAME)
            {
            }
            column(PostingDate_SalesHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(Company_Email; CompanyInformation."E-Mail")
            {
            }
            column(companyLogo; CompanyInformation.Picture)
            {
            }
            column(GSTINno12; CompanyInformation."GST Registration No.")
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
            column(Referenece_SalesHeader; "Sales Invoice Header".Referenece)
            {
            }
            column(ModeOfCommunication_SalesHeader; "Sales Invoice Header"."Mode Of Communication")
            {
            }
            column(ProductApplicationField_SalesHeader; "Sales Invoice Header"."Product Application Field")
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
            column(IssueNo_SalesHeader; "Sales Invoice Header"."Issue No")
            {
            }
            column(IssueDate_SalesHeader; "Sales Invoice Header"."Issue Date")
            {
            }
            column(DateofInquiry_SalesHeader; "Sales Invoice Header"."Date of Inquiry")
            {
            }
            column(RevisionNo_SalesHeader; "Sales Invoice Header"."Revision No")
            {
            }
            column(RevisionDate_SalesHeader; "Sales Invoice Header"."Revision Date")
            {
            }
            column(TransportName_SalesHeader; "Sales Invoice Header"."Transport Name")
            {
            }
            column(CourierName_SalesHeader; "Sales Invoice Header"."Courier Name")
            {
            }
            column(AWBNo_SalesHeader; "Sales Invoice Header"."AWB No.")
            {
            }
            column(LRRRNo_SalesHeader; "Sales Invoice Header"."LR/RR No.")
            {
            }
            column(EmailId; EmailId)
            {
            }
            column(contact; contact)
            {
            }
            column(TransCourName; TransCourName)
            {
            }
            column(TransNo; TransNo)
            {
            }
            column(TransDate; TransDate)
            {
            }
            dataitem("Sales Invoice Line"; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = FIELD("No.");
                column(UnitofMeasure_SalesLine; "Sales Invoice Line"."Unit of Measure")
                {
                }
                column(Quantity_SalesLine; "Sales Invoice Line".Quantity)
                {
                }
                column(No_SalesLine; "Sales Invoice Line"."No.")
                {
                }
                column(Sr; Sr)
                {
                }
                column(Desc; Desc)
                {
                }
                column(TechFunc; "Sales Invoice Line"."Technical Function/s")
                {
                }
                column(PackingSize_SalesLine; "Sales Invoice Line"."Packing Size")
                {
                }
                // column(LotNo; LotNo)
                // {
                // }
                column(UnitsperParcel_SalesLine; "Sales Invoice Line"."Units per Parcel")
                {
                }
                column(NoofPackages_SalesLine; "Sales Invoice Line"."No. of Packages")
                {
                }
                column(LotNoNew; "Sales Invoice Line"."Identification Mark")
                {
                }
                dataitem("Value Entry"; "Value Entry")
                {
                    DataItemLink = "Document No." = FIELD("Document No."),
                                           "Document Line No." = FIELD("Line No.");

                    dataitem("Item Ledger Entry"; "Item Ledger Entry")
                    {
                        DataItemLink = "Entry No." = FIELD("Item Ledger Entry No.");
                        //    // column(LotNoNew; "Item Ledger Entry"."Lot No.")
                        //     {
                        //     }
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF "Sales Invoice Line".Quantity <> 0 THEN//PCPL41_13062020
                        Sr := Sr + 1;
                    CLEAR(TechFunc);
                    IF "Sales Invoice Line".Type = "Sales Invoice Line".Type::Item THEN BEGIN
                        RecItem.RESET;
                        RecItem.SETRANGE(RecItem."No.", "Sales Invoice Line"."No.");
                        IF RecItem.FINDFIRST THEN BEGIN
                            Desc := RecItem.Description;
                            TechFunc := RecItem."Technical Function/s";
                        END;
                    END
                    ELSE
                        IF "Sales Invoice Line".Type = "Sales Invoice Line".Type::"G/L Account" THEN BEGIN
                            GLAcc.RESET;
                            GLAcc.SETRANGE(GLAcc."No.", "Sales Invoice Line"."No.");
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
                    ItemLedgerEntry.SETRANGE(ItemLedgerEntry."Item No.", "Sales Invoice Line"."No.");
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
                recCust.SETRANGE(recCust."No.", "Sales Invoice Header"."Sell-to Customer No.");
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

                //PCPL41
                CLEAR(TransCourName);
                CLEAR(TransNo);
                CLEAR(TransDate);
                IF "Sales Invoice Header"."Shipping Agent Code" = '' THEN
                    TransCourName := "Sales Invoice Header"."Courier Name"
                ELSE BEGIN
                    IF ShippingAgent.GET("Sales Invoice Header"."Shipping Agent Code") THEN
                        TransCourName := ShippingAgent.Name;
                    TransNo := "Sales Invoice Header"."LR/RR No.";
                    TransDate := "Sales Invoice Header"."LR/RR Date";
                END;
                //PCPL41
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
        CompanyInformation.CALCFIELDS(Picture);
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
        ShippingAgent: Record 291;
        TransCourName: Text[50];
        TransNo: Code[10];
        TransDate: Date;
        MobileNo: Code[20];
        DirectNo: Code[20];
        designt: Text;
}

