report 50015 "DO Report GST"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\DO Report GST-1.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Posting Date";
            column(NatureTCS; NatureTCS)
            {
            }
            column(Frieght; Frieght)
            {
            }
            column(TcsPercent; TcsPercent)
            {
            }
            column(TCSAmt; TCSAmt)
            {
            }
            column(URNNo; URNNo)
            {
            }
            column(AmounttoCustomer_SalesHeader; '')//"Sales Header"."Amount to Customer")  ////
            {
            }
            column(ShiptoAddress_SalesHeader; "Sales Header"."Ship-to Address")
            {
            }
            column(ShiptoAddress2_SalesHeader; "Sales Header"."Ship-to Address 2")
            {
            }
            column(BilltoAddress_SalesHeader; "Sales Header"."Bill-to Address")
            {
            }
            column(BilltoAddress2_SalesHeader; "Sales Header"."Bill-to Address 2")
            {
            }
            column(lineDiscAmt; LineDiscAmt)
            {
            }
            column(BilltoName_SalesHeader; "Sales Header"."Bill-to Name")
            {
            }
            column(TRANSPORTER; ShipA.Name)
            {
            }
            column(ShiptoName_SalesHeader; "Sales Header"."Ship-to Name")
            {
            }
            column(RequestedDeliveryDate_SalesHeader; "Sales Header"."Requested Delivery Date")
            {
            }
            column(CGSTWords; CGSTWords[1])
            {
            }
            column(SGSTWords; SGSTWords[1])
            {
            }
            column(IGSTWords; IGSTWOrds[1])
            {
            }
            column(CustomerOrderNo_SalesHeader; "Sales Header"."Customer Order No.")
            {
            }
            column(CCAttched_SalesHeader; "Sales Header"."CC Attched")
            {
            }
            column(BookingTo_SalesHeader; "Sales Header"."Booking To")
            {
            }
            column(DoNo_SalesHeader; "Sales Header"."Do No.")
            {
            }
            column(DocumentDate_SalesHeader; "Sales Header"."Document Date")
            {
            }
            column(PaymentTermsCode_SalesHeader; "Sales Header"."Payment Terms Code")
            {
            }
            column(SONo; "Sales Header"."No.")
            {
            }
            column(Postingdate; "Sales Header"."Posting Date")
            {
            }
            column(RevisionNo; "Sales Header"."No. of Archived Versions")
            {
            }
            column(RevisionDate; "Order Date")
            {
            }
            column(BillToPAN; Cust."P.A.N. No.")
            {
            }
            column(ShipToPAN; ShipToPAN)
            {
            }
            column(BilltoGST; Cust."GST Registration No.")
            {
            }
            column(SHippToGST; SHippToGST)
            {
            }
            column(BillToStateCode1; BillToStateCode1)
            {
            }
            column(BillToState1; BillToState1)
            {
            }
            column(ShipToStateCode1; ShipToStateCode1)
            {
            }
            column(ShipToState1; ShipToState1)
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Header"."Posting Date")
            {
            }
            column(SalesOrderNo; "Sales Header"."No.")
            {
            }
            column(PaymentTermsCode; "Sales Header"."Payment Terms Code")
            {
            }
            column(ModeOfTransport; "Sales Header"."Mode of Transport")
            {
            }
            column(LRNo; "Sales Header"."LR/RR No.")
            {
            }
            column(LRDate; "Sales Header"."LR/RR Date")
            {
            }
            column(VehicleNo; "Sales Header"."Vehicle No.")
            {
            }
            column(AmountinWords1; AmountinWords[1])
            {
            }
            column(CGSTAmount; CGSTAmount)
            {
            }
            column(SGSTAmount; SGSTAmount)
            {
            }
            column(IGSTAmount; IGSTAmount)
            {
            }
            column(StateName; StateName)
            {
            }
            column(StateCode; StateCode)
            {
            }
            column(DECARRAY1; DECARRAY[1])
            {
            }
            column(DECARRAY2; DECARRAY[2])
            {
            }
            column(DECARRAY3; DECARRAY[3])
            {
            }
            column(DECARRAY4; DECARRAY[4])
            {
            }
            column(DECARRAY5; DECARRAY[5])
            {
            }
            column(ShipToGSTRegistration; ShipToGSTRegistration)
            {

            }
            column(ShipToPANNo; ShipToPANNo)
            {

            }
            dataitem("CopyLoop."; "Integer")
            {
                DataItemTableView = SORTING("Number");
                column(OutPutNo; OutPutNo)
                {
                }
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING("Number")
                                        WHERE("Number" = CONST(1));
                    column(CopyText; COPYTEXT)
                    {
                    }
                    column(ComName; CompanyInfo.Name)
                    {
                    }
                    column(ComName1; CompanyInfo.Name + '' + CompanyInfo."Name 2")
                    {
                    }
                    column(ComAddress; CompanyInfo.Address)
                    {
                    }
                    column(ComAddress1; CompanyInfo."Address 2")
                    {
                    }
                    column(ComCityPostrCode; CompanyInfo.City + ' ' + CompanyInfo."Post Code")
                    {
                    }
                    column(BankAccntNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyLogo; CompanyInfo.Picture)
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(PageCaption; PageCaption)
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(State; '')// CompanyInfo.State)
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(GSTIN; CompanyInfo."GST Registration No.")
                    {
                    }
                    column(ShipToAddr1; ShipToAddr[1])
                    {
                    }
                    column(ShipToAddr2; ShipToAddr[2])
                    {
                    }
                    column(ShipToAddr3; ShipToAddr[3])
                    {
                    }
                    column(ShipToAddr4; ShipToAddr[4])
                    {
                    }
                    column(ShipToAddr5; ShipToAddr[5])
                    {
                    }
                    column(ShipToAddr6; ShipToAddr[6])
                    {
                    }
                    column(ShipToAddr7; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8; ShipToAddr[8])
                    {
                    }
                    column(BankName; recBank.Name)
                    {
                    }
                    column(BankAddress1; recBank.Address)
                    {
                    }
                    column(BankAddress2; recBank."Address 2")
                    {
                    }
                    column(BankSwiftCode; recBank."SWIFT Code")
                    {
                    }
                    column(LocStateCode; recLocation."State Code")
                    {
                    }
                    column(CGSTPer; CGSTPer)
                    {
                    }
                    column(SGSTPer; SGSTPer)
                    {
                    }
                    column(IGSTPer; IGSTPer)
                    {
                    }

                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = WHERE("Type" = FILTER(Item));
                        column(HSNSACCode_SalesLine; "Sales Line"."HSN/SAC Code")
                        {
                        }
                        column(LineDiscountAmount_SalesLine; "Sales Line"."Line Discount Amount")
                        {
                        }
                        column(Comments1; Comments[1])
                        {
                        }
                        column(Purity_SalesLine; "Sales Line".Purity)
                        {
                        }
                        column(NoofPackages_SalesLine; "Sales Line"."No. of Packages")
                        {
                        }
                        column(UnitofMeasureCode_SalesLine; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        column(Comments2; Comments[2])
                        {
                        }
                        column(Comments3; Comments[3])
                        {
                        }
                        column(Comments4; Comments[4])
                        {
                        }
                        column(CGST; CGST)
                        {
                        }
                        column(LineDiscount_SalesLine; FORMAT("Sales Line"."Line Discount %") + '%')
                        {
                        }
                        column(UnitsperParcel_SalesLine; "Sales Line"."Units per Parcel")
                        {
                        }
                        column(SGST; SGST)
                        {
                        }
                        column(IGST; IGST)
                        {
                        }
                        // column(CGSTPer; CGSTPer)
                        // {
                        // }
                        // column(SGSTPer; SGSTPer)
                        // {
                        // }
                        // column(IGSTPer; IGSTPer)
                        // {
                        // }
                        column(SrNo; SrNo)
                        {
                        }
                        column(HSNSACCode_SalesInvoiceLine; "Sales Line"."HSN/SAC Code")
                        {
                        }
                        column(ItemNo; "Sales Line"."No.")
                        {
                        }
                        column(Description; "Sales Line".Description)
                        {
                        }
                        column(UOM; "Sales Line"."Unit of Measure")
                        {
                        }
                        column(Quantity; "Sales Line".Quantity)
                        {
                        }
                        column(UnitPrice; "Sales Line"."Unit Price")
                        {
                        }
                        column(Amount; "Sales Line".Amount)
                        {
                        }
                        column(HSNHACCode; recSalesInvoiceLine."HSN/SAC Code")
                        {
                        }
                        column(DiscountPerc; recSalesInvoiceLine."Line Discount %")
                        {
                        }
                        column(TotalAmount; TotalAmount)
                        {
                        }
                        // column(Frieght; Frieght)
                        // {
                        // }
                        column(Insurance; Insurance)
                        {
                        }
                        column(OtherCharges; OtherCharges)
                        {
                        }
                        column(TotalFr; TotalFr)
                        {
                        }
                        dataitem("Tracking Specification"; "Tracking Specification")
                        {
                            DataItemLink = "Source ID" = FIELD("Document No."),
                                           "Source Ref. No." = FIELD("Line No.");
                            column(LotNo_TrackingSpecification; "Tracking Specification"."Lot No.")
                            {
                            }
                        }

                        trigger OnAfterGetRecord();
                        begin
                            SrNo += 1;
                            //TotalAmount += "Sales Line".Amount;
                            //TCSAmt:=0;
                            // CGST := 0;
                            // IGST := 0;
                            // SGST := 0;
                            // CGSTPer := 0;
                            // SGSTPer := 0;
                            // IGSTPer := 0;
                            // //>>PCPL/BPPL/010
                            // GLE.RESET;
                            // GLE.SETRANGE(GLE."Document No.", "Sales Line"."Document No.");
                            // GLE.SETRANGE(GLE."HSN/SAC Code", "Sales Line"."HSN/SAC Code");
                            // GLE.SETRANGE(GLE."Transaction Type", GLE."Transaction Type"::Sales);
                            // IF GLE.FINDSET THEN BEGIN
                            //     REPEAT
                            //         IF GLE."GST Component Code" = 'CGST' THEN BEGIN
                            //             CGST := ABS(GLE."GST Amount");
                            //             CGSTPer := GLE."GST %";
                            //         END
                            //         ELSE
                            //             IF GLE."GST Component Code" = 'IGST' THEN BEGIN
                            //                 IGST := ABS(GLE."GST Amount");
                            //                 IGSTPer := GLE."GST %";
                            //             END
                            //             ELSE
                            //                 IF GLE."GST Component Code" = 'SGST' THEN BEGIN
                            //                     SGST := ABS(GLE."GST Amount");
                            //                     SGSTPer := GLE."GST %";
                            //                 END;
                            //     UNTIL GLE.NEXT = 0;
                            // END;

                            TotalAmount := 0;
                            recSalesInvoiceLine.RESET;
                            recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                            recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                            IF recSalesInvoiceLine.FINDFIRST THEN
                                REPEAT
                                    TotalAmount += recSalesInvoiceLine.Amount;
                                UNTIL recSalesInvoiceLine.NEXT = 0;

                            //LineDiscAmt+="Sales Line"."Line Discount Amount";

                            I := 1;
                            //Comments := '';
                            recSCL.RESET;
                            recSCL.SETFILTER(recSCL."Document Type", '%1', "Document Type"::Order);
                            recSCL.SETRANGE(recSCL."No.", "Sales Line"."Document No.");
                            recSCL.SETRANGE(recSCL."Document Line No.", 0);
                            IF recSCL.FINDSET THEN
                                REPEAT

                                    Comments[I] := recSCL.Comment;
                                    I += 1;
                                UNTIL recSCL.NEXT = 0;


                            // //Clear(Frieght);
                            // recSalesInvoiceLine.RESET;
                            // recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                            // recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                            // recSalesInvoiceLine.SetRange("No.", '400516');
                            // IF recSalesInvoiceLine.FINDFIRST THEN begin
                            //     Frieght := recSalesInvoiceLine."Line Amount";
                            // end;
                            // Message(Format(Frieght));


                        end;

                        trigger OnPreDataItem();
                        begin
                            NoOfRecords := "Sales Line".COUNT;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number = 1 THEN BEGIN
                        COPYTEXT := TEXT001;
                        OutPutNo += 1;
                    END

                    ELSE
                        IF Number = 2 THEN BEGIN
                            COPYTEXT := TEXT002;
                            OutPutNo += 1;
                        END

                        ELSE
                            IF Number = 3 THEN BEGIN
                                COPYTEXT := TEXT003;
                                OutPutNo += 1;
                            END

                            ELSE
                                IF Number = 4 THEN BEGIN
                                    COPYTEXT := TEXT004;
                                    OutPutNo += 1;
                                END;

                    SrNo := 0;

                    CurrReport.PAGENO := 1;

                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(1) + 1;
                    IF NoOfLoops <= 1 THEN
                        NoOfLoops := 1;
                    COPYTEXT := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutPutNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                //PCPL0024---Start
                DECI := 0;
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "No.");
                IF recSalesInvoiceLine.FINDFIRST THEN
                    REPEAT
                        IF recSalesInvoiceLine."No." = '' THEN BEGIN
                            DECI += 1;
                            DECARRAY[DECI] := recSalesInvoiceLine.Description;
                        END;
                    UNTIL recSalesInvoiceLine.NEXT = 0;
                //PCPL0024---End


                IF ShipA.GET("Sales Header"."Shipping Agent Code") THEN;

                IF RecState.GET()/*(CompanyInfo.State)*/ THEN BEGIN
                    StateName := RecState.Description;
                    StateCode := '0';// RecState."State Code for TIN";
                END;

                IF Cust.GET("Sales Header"."Sell-to Customer No.") THEN;

                IF "Sales Header"."Ship-to Code" = '' THEN BEGIN
                    IF Cust.GET("Sales Header"."Bill-to Customer No.") THEN BEGIN
                        SHippToGST := Cust."GST Registration No.";
                        ShipToPAN := Cust."P.A.N. No.";
                    END;
                END;

                SalesHeader.RESET;
                SalesHeader.SETRANGE("No.", "No.");
                IF SalesHeader.FINDFIRST THEN BEGIN
                    IF SalesHeader."Ship-to Code" <> '' THEN BEGIN
                        ShipToadd.RESET;
                        ShipToadd.SETRANGE("Customer No.", SalesHeader."Bill-to Customer No.");
                        ShipToadd.SETRANGE(ShipToadd.Code, SalesHeader."Ship-to Code");
                        IF ShipToadd.FINDFIRST THEN
                            SHippToGST := ShipToadd."GST Registration No.";
                        ShipToPAN := '0';// ShipToadd."P.A.N.No.";
                        IF RState.GET(ShipToadd.State) THEN BEGIN
                            ShipToState1 := RState.Description;
                            ShipToStateCode1 := RState."State Code (GST Reg. No.)";
                        END;
                    END;
                END;

                IF Cust.GET("Sales Header"."Sell-to Customer No.") THEN BEGIN
                    IF RState.GET(Cust."State Code") THEN BEGIN
                        BillToState1 := RState.Description;
                        BillToStateCode1 := RState."State Code (GST Reg. No.)";
                    END;
                END;

                IF "Sales Header"."Ship-to Code" = '' THEN BEGIN
                    IF Cust.GET("Sales Header"."Bill-to Customer No.") THEN BEGIN
                        IF RState.GET(Cust."State Code") THEN
                            ShipToState1 := RState.Description;
                        ShipToStateCode1 := RState."State Code (GST Reg. No.)";
                    END;
                END;

                IF "Sales Header"."Ship-to Code" <> '' THEN BEGIN
                    IF ShipToadd.GET("Sales Header"."Ship-to Code") THEN BEGIN
                        IF RState.GET(Cust."State Code") THEN
                            ShipToState1 := RState.Description;
                        ShipToStateCode1 := RState."State Code (GST Reg. No.)";
                    END;
                END;
                LineDiscAmt := 0;
                SL.RESET;
                SL.SETRANGE(SL."Document No.", "Sales Header"."No.");
                IF SL.FINDSET THEN
                    REPEAT
                        LineDiscAmt += SL."Line Discount Amount";
                    UNTIL SL.NEXT = 0;
                FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");
                FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, "Sales Header");


                // Amount in Words
                GrossTotal := 0;
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                IF recSalesInvoiceLine.FINDFIRST THEN
                    REPEAT
                        GrossTotal += recSalesInvoiceLine.Amount;
                    UNTIL recSalesInvoiceLine.NEXT = 0;


                //Clear(Frieght);
                recSalesReceivalesSetup.Get();
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivalesSetup.Frieght);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght := recSalesInvoiceLine."Line Amount";

                end;

                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivalesSetup.Insurance);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Insurance := recSalesInvoiceLine."Line Amount";

                end;


                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivalesSetup.Courier);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght += recSalesInvoiceLine."Line Amount";
                    //Frieght := recSalesInvoiceLine."Line Amount";

                end;



                // Message((Format(Frieght)));
                CLEAR(TcsPercent);
                CLEAR(TCSAmt);
                CLEAR(NatureTCS);

                GetSalesStatisticsAmount("Sales Header", TotalGSTAmount, TotalGSTPercent);
                GetStatisticsAmount("Sales Header", TCSAmt, TcsPercent);
                repCheck.InitTextVariable;
                repCheck.FormatNoText(AmountinWords, (Round(GrossTotal + TCSAmt + IGSTAmount + CGSTAmount + SGSTAmount + Frieght + Insurance)), "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(CGSTWords, CGSTAmount, "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(SGSTWords, SGSTAmount, "Sales Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(IGSTWOrds, IGSTAmount, "Sales Header"."Currency Code");
                // TotalAmount := TotalAmount + Frieght;
                //PCPL50
                recCust.RESET;
                recCust.SETRANGE(recCust."No.", "Sales Header"."Bill-to Customer No.");
                IF recCust.FINDFIRST THEN
                    URNNo := recCust."URN No.";
                //PCPL50
                //PCPL-64 22DEC2022<<
                ShipToAddress1.Reset();
                ShipToAddress1.SetRange("Customer No.", "Sales Header"."Sell-to Customer No.");
                if ShipToAddress1.FindFirst() then;

                Customer.GET("Sales Header"."Sell-to Customer No.");
                if ("Sales Header"."Ship-to Code" <> '') then begin
                    if ShipToAddress1."Other Consignee" = true then begin
                        ShipToGSTRegistration := ShipToAddress1."Ship To GST Registration No.";
                        ShipToPANNo := ShipToAddress1."P.A.N.No.";
                    end
                    else begin
                        ShipToGSTRegistration := Customer."GST Registration No.";
                        ShipToPANNo := Customer."P.A.N. No.";
                    end

                end else begin
                    ShipToGSTRegistration := Customer."GST Registration No.";
                    ShipToPANNo := Customer."P.A.N. No.";
                end;
                //PCPL-64 22DEC2022>>



            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Functions)
                {
                    field("No Of Copies"; NoOfCopies)
                    {
                        ApplicationArea = all;
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
        FormatAddr.Company(CompanyAddr, CompanyInfo);
    end;

    var
        TotalGSTPercent: Decimal;
        GrossTotal: Decimal;
        TotalGSTAmount: Decimal;
        CompanyInfo: Record 79;
        FormatAddr: Codeunit 365;
        CustAddr: array[8] of Text;
        CompanyAddr: array[8] of Text;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutPutNo: Integer;
        TEXT001: Label 'Original';
        COPYTEXT: Text;
        TEXT002: Label 'Duplicate';
        TEXT003: Label 'Triplicate';
        TEXT004: Label 'Quadraplicate';
        PageCaption: Label 'Page %1 of %2';
        NoOfRows: Integer;
        NoOfRecords: Integer;
        recCust: Record 18;
        repCheck: Codeunit 50000;
        AmountinWords: array[5] of Text[250];
        TotalAmount: Decimal;
        recSalesInvoiceLine: Record 37;
        SrNo: Integer;
        GLE: Record "Detailed GST Entry Buffer";
        CGST: Decimal;
        SGST: Decimal;
        IGST: Decimal;
        CGSTPer: Decimal;
        SGSTPer: Decimal;
        IGSTPer: Decimal;
        CGSTAmount: Decimal;
        SGSTAmount: Decimal;
        IGSTAmount: Decimal;
        ShipToAddr: array[8] of Text[50];
        recBank: Record 270;
        recLocation: Record 14;
        RecState: Record State;
        StateName: Text[50];
        StateCode: Code[20];
        ShipToGST: Code[20];
        ShipToState: Text[20];
        ShipToStateCode: Code[20];
        BillToGST: Code[20];
        BillToState: Text[20];
        BillToStateCode: Code[20];
        Frieght: Decimal;
        Insurance: Decimal;

        OtherCharges: Decimal;
        //PostedStrOrderdetailLines: Record 13795;
        Cust: Record 18;
        ShipToadd: Record 222;
        SHippToGST: Code[25];
        RState: Record "State";
        BillToState1: Code[50];
        BillToStateCode1: Code[20];
        ShipToState1: Code[50];
        ShipToStateCode1: Code[20];
        BillToPAN: Code[25];
        ShipToPAN: Code[25];
        LineDiscAmt: Decimal;
        CGSTWords: array[5] of Text[250];
        SGSTWords: array[5] of Text[250];
        IGSTWOrds: array[5] of Text[250];
        I: Integer;
        recSCL: Record 44;
        Comments: array[5] of Text[250];
        ShipA: Record 291;
        SL: Record 37;
        // StructOrderLine: Record 13795;
        DECI: Integer;
        DECARRAY: array[5] of Text[250];
        SalesHeader: Record 36;
        TotalFr: Decimal;
        URNNo: Code[17];
        RecSalesLine: Record 37;
        TCSAmt: Decimal;
        TcsPercent: Decimal;
        NatureTCS: Text;
        IGSTLbl: Label 'IGST';
        SGSTLbl: Label 'SGST';
        CGSTLbl: Label 'CGST';
        CESSLbl: Label 'CESS';
        GSTLbl: Label 'GST';
        GSTCESSLbl: Label 'GST CESS';
        recSalesReceivalesSetup: Record "Sales & Receivables Setup";
        ShipToAddress1: Record "Ship-to Address";
        ShipToGSTRegistration: Code[20];
        ShipToPANNo: Code[20];
        Customer: Record Customer;

    procedure GetSalesStatisticsAmount(
   SalesHeader: Record "Sales Header";
   var GSTAmount: Decimal; var GSTPercent: Decimal)
    var
        SalesLine: Record "Sales Line";
    begin
        Clear(GSTAmount);
        Clear(SGSTAmount);
        Clear(IGSTAmount);
        // Clear(IGSTAmt);
        // Clear(IGSTPercent);
        // Clear(SGSTPercent);
        // Clear(CGSTPercent);

        SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document no.", SalesHeader."No.");
        if SalesLine.FindSet() then
            repeat
                GSTAmount += GetGSTAmount(SalesLine.RecordId());
                GSTPercent += GetGSTPercent(SalesLine.RecordId());
                TotalAmount += SalesLine."Line Amount" - SalesLine."Line Discount Amount";
                GetGSTAmounts(SalesLine);
            until SalesLine.Next() = 0;
    end;

    local procedure GetGSTAmount(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        if GSTSetup."Cess Tax Type" <> '' then
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type", GSTSetup."Cess Tax Type")
        else
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then begin
            TaxTransactionValue.CalcSums(Amount);
            TaxTransactionValue.CalcSums(Percent);
            /*  if TaxTransactionValue."Value ID" = 6 then begin
                 SGSTAmt += TaxTransactionValue.Amount;
                 SGSTPercent += TaxTransactionValue.Percent;
             end;
             if TaxTransactionValue."Value ID" = 2 then begin
                 CGSTAmt += TaxTransactionValue.Amount;
                 CGSTPercent += TaxTransactionValue.Percent;
             end;
             if TaxTransactionValue."Value ID" = 3 then begin
                 IGSTAmt += TaxTransactionValue.Amount;
                 IGSTPercent += TaxTransactionValue.Percent;
             end; */
        end;
        exit(TaxTransactionValue.Amount);
    end;

    local procedure GetGSTPercent(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        if GSTSetup."Cess Tax Type" <> '' then
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type", GSTSetup."Cess Tax Type")
        else
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Percent);

        exit(TaxTransactionValue.Percent);
    end;

    local procedure GetGSTAmounts(Salesline: Record "Sales Line")
    var
        ComponentName: Code[30];
        TaxTransactionValue: Record "Tax Transaction Value";
        GSTSetup: Record "GST Setup";
    begin
        if not GSTSetup.Get() then
            exit;

        ComponentName := GetComponentName(Salesline, GSTSetup);

        if (Salesline.Type <> Salesline.Type::" ") then begin
            TaxTransactionValue.Reset();
            TaxTransactionValue.SetRange("Tax Record ID", Salesline.RecordId);
            TaxTransactionValue.SetRange("Tax Type", GSTSetup."GST Tax Type");
            TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
            TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
            if TaxTransactionValue.FindSet() then
                repeat
                    case TaxTransactionValue."Value ID" of
                        6:
                            begin
                                CGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                SGSTPer := TaxTransactionValue.Percent;
                            end;
                        2:
                            begin
                                SGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                CGSTPer := TaxTransactionValue.Percent;
                            end;
                        3:
                            begin
                                IGSTAmount += Round(TaxTransactionValue.Amount, GetGSTRoundingPrecision(ComponentName));
                                IGSTPer := TaxTransactionValue.Percent;
                            end;
                    end;
                until TaxTransactionValue.Next() = 0;
        end;
    end;

    procedure GetGSTRoundingPrecision(ComponentName: Code[30]): Decimal
    var
        TaxComponent: Record "Tax Component";
        GSTSetup: Record "GST Setup";
        GSTRoundingPrecision: Decimal;
    begin
        if not GSTSetup.Get() then
            exit;
        GSTSetup.TestField("GST Tax Type");

        TaxComponent.SetRange("Tax Type", GSTSetup."GST Tax Type");
        TaxComponent.SetRange(Name, ComponentName);
        TaxComponent.FindFirst();
        if TaxComponent."Rounding Precision" <> 0 then
            GSTRoundingPrecision := TaxComponent."Rounding Precision"
        else
            GSTRoundingPrecision := 1;
        exit(GSTRoundingPrecision);
    end;

    local procedure GetComponentName(SalesLine: Record "Sales Line";
        GSTSetup: Record "GST Setup"): Code[30]
    var
        ComponentName: Code[30];
    begin
        if GSTSetup."GST Tax Type" = GSTLbl then
            if SalesLine."GST Jurisdiction Type" = SalesLine."GST Jurisdiction Type"::Interstate then
                ComponentName := IGSTLbl
            else
                ComponentName := CGSTLbl
        else
            if GSTSetup."Cess Tax Type" = GSTCESSLbl then
                ComponentName := CESSLbl;
        exit(ComponentName)
    end;

    procedure GetStatisticsAmount(
           SalesHeader: Record "Sales Header";
           var TCSAmount: Decimal; var TCSPercent: Decimal)
    var
        SalesLine: Record "Sales Line";
        TCSManagement: Codeunit "TCS Management";
        i: Integer;
        RecordIDList: List of [RecordID];
    begin
        Clear(TCSAmount);
        Clear(TCSPercent);

        SalesLine.SetRange("Document Type", SalesHeader."Document Type");
        SalesLine.SetRange("Document no.", SalesHeader."No.");
        if SalesLine.FindSet() then
            repeat
                RecordIDList.Add(SalesLine.RecordId());
            until SalesLine.Next() = 0;

        for i := 1 to RecordIDList.Count() do begin
            TCSAmount += GetTCSAmount(RecordIDList.Get(i));
            TCSPercent += GetTCSPercent(RecordIDList.Get(i));
        end;

        TCSAmount := TCSManagement.RoundTCSAmount(TCSAmount);
    end;

    local procedure GetTCSAmount(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TCSSetup: Record "TCS Setup";
    begin
        if not TCSSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        TaxTransactionValue.SetRange("Tax Type", TCSSetup."Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Amount);

        exit(TaxTransactionValue.Amount);
    end;

    local procedure GetTCSPercent(RecID: RecordID): Decimal
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TCSSetup: Record "TCS Setup";
    begin
        if not TCSSetup.Get() then
            exit;

        TaxTransactionValue.SetRange("Tax Record ID", RecID);
        TaxTransactionValue.SetRange("Value Type", TaxTransactionValue."Value Type"::COMPONENT);
        TaxTransactionValue.SetRange("Tax Type", TCSSetup."Tax Type");
        TaxTransactionValue.SetFilter(Percent, '<>%1', 0);
        if not TaxTransactionValue.IsEmpty() then
            TaxTransactionValue.CalcSums(Percent);

        exit(TaxTransactionValue.Percent);
    end;

}

