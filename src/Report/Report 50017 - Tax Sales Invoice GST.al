report 50017 "Tax Sales Invoice GST"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\Tax Sales Invoice GST QR-1.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Posting Date";
            column(NatureTCS; NatureTCS)
            {
            }
            column(QRCode; Einv."E-Invoice QR Code")
            {

            }
            column(IRNNo; Einv."E-Invoice IRN No.")
            {

            }
            column(Acknowledgement_No_; Einv."E-Invoice Acknowledg No.")
            {

            }
            column(Acknowledgement_Date; Einv."E-Invoice Acknowledg Date Time")
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
            column(Frieght; Frieght)
            {
            }
            column(FrAmt; FrAmt)
            {
            }

            column(ShipState; ShipState)
            {
            }
            column(ShiptoCode_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Code")
            {
            }
            column(ShiptoPostCode_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Post Code")
            {
            }
            column(SelltoPostCode_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Post Code")
            {
            }
            column(SelltoAddress_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Address")
            {
            }
            column(SelltoAddress2_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to Address 2")
            {
            }
            column(SelltoCity_SalesInvoiceHeader; "Sales Invoice Header"."Sell-to City")
            {
            }
            column(ShiptoAddress_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Address")
            {
            }
            column(ShiptoAddress2_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Address 2")
            {
            }
            column(ShiptoCity_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to City")
            {
            }
            column(ShipStateCode; ShipStateCode)
            {
            }
            column(CCAttched_SalesInvoiceHeader; "Sales Invoice Header"."CC Attched")
            {
            }
            column(BookingTo_SalesInvoiceHeader; "Sales Invoice Header"."Booking To")
            {
            }
            column(LineDiscountAmt; LineDiscountAmt)
            {
            }
            column(Logo; CompanyInfo.Picture)
            {
            }
            column(add; Add)
            {
            }
            column(ShipmentMethodCode_SalesInvoiceHeader; ShiAgent.Name)
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
            column(BillPan; RCust."P.A.N. No.")
            {
            }
            column(SHIPan; PANShip)
            {
            }
            column(StateCodeCust; RecState."State Code (GST Reg. No.)")
            {
            }
            column(LRRRDate_SalesInvoiceHeader; "Sales Invoice Header"."LR/RR Date")
            {
            }
            column(LRRRNo_SalesInvoiceHeader; "Sales Invoice Header"."LR/RR No.")
            {
            }
            column(ShiptoName_SalesInvoiceHeader; "Sales Invoice Header"."Ship-to Name")
            {
            }
            column(BilltoName_SalesInvoiceHeader; "Sales Invoice Header"."Bill-to Name")
            {
            }
            column(OrderDate_SalesInvoiceHeader; "Sales Invoice Header"."Order Date")
            {
            }
            column(OrderNo_SalesInvoiceHeader; "Sales Invoice Header"."Customer Order No.")
            {
            }
            column(PaymentTermsCode_SalesInvoiceHeader; "Sales Invoice Header"."Payment Terms Code")
            {
            }
            column(VehicleNo_SalesInvoiceHeader; "Sales Invoice Header"."Vehicle No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader; "Sales Invoice Header"."Posting Date")
            {
            }
            column(No_SalesInvoiceHeader; "Sales Invoice Header"."No.")
            {
            }
            column(StateCust; RecState.Description)
            {
            }
            column(GSTINCUst; RCust."GST Registration No.")
            {
            }
            column(PostingDate_SalesInvoiceHeader1; "Sales Invoice Header"."Posting Date")
            {
            }
            column(SalesOrderNo; "Sales Invoice Header"."No.")
            {
            }
            column(PaymentTermsCode; "Sales Invoice Header"."Payment Terms Code")
            {
            }
            column(ModeOfTransport; "Sales Invoice Header"."Mode of Transport")
            {
            }
            column(LRNo; "Sales Invoice Header"."LR/RR No.")
            {
            }
            column(LRDate; "Sales Invoice Header"."LR/RR Date")
            {
            }
            column(VehicleNo; "Sales Invoice Header"."Vehicle No.")
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
            column(OtherCharges; OtherCharges)
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
            column(GSTNoShip; GSTNoShip)
            {
            }
            column(Text005; Text005)
            {
            }
            column(Text006; Text006)
            {
            }
            column(ShipToGSTRegistration; ShipToGSTRegistration)
            {

            }
            column(ShipToPANNo; ShipToPANNo)
            {
            }

            column(shipPanNo; shipPanNo)
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
                    column(Cnt122; Cnt122)
                    {
                    }
                    column(Insurance; Insurance)
                    {
                    }
                    column(CopyText; COPYTEXT)
                    {
                    }
                    column(ComName; CompanyInfo.Name)
                    {
                    }
                    column(ComName1; CompanyInfo.Name + '' + CompanyInfo."Name 2")
                    {
                    }
                    column(ComAddress; CompanyInfo.Address + '' + CompanyInfo."Address 2" + '' + CompanyInfo.City + '' + CompanyInfo."Post Code")
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
                    column(State; '')//CompanyInfo.State)
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
                    column(BankAddress; recBank.Address)
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
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = WHERE(Type = FILTER(Item),
                                                  Quantity = FILTER(<> 0));
                        column(BatchNo; '')// "Sales Invoice Line"."Identification Mark")
                        {
                        }
                        column(DocumentNo_SalesInvoiceLine; "Sales Invoice Line"."Document No.")
                        {
                        }
                        column(LineNo_SalesInvoiceLine; "Sales Invoice Line"."Line No.")
                        {
                        }
                        column(CGST; CGST)
                        {
                        }
                        column(SGST; SGST)
                        {
                        }
                        column(UnitsperParcel_SalesInvoiceLine; "Sales Invoice Line"."Units per Parcel")
                        {
                        }
                        column(IGST; IGST)
                        {
                        }
                        column(LineDiscPer; "Sales Invoice Line"."Line Discount %")
                        {
                        }
                        column(CGSTPer; CGSTPer)
                        {
                        }
                        column(SGSTPer; SGSTPer)
                        {
                        }
                        column(NoofPackages_SalesInvoiceLine; "Sales Invoice Line"."No. of Packages")
                        {
                        }
                        column(IGSTPer; IGSTPer)
                        {
                        }
                        column(SrNo; SrNo)
                        {
                        }
                        column(HSNSACCode_SalesInvoiceLine; "Sales Invoice Line"."HSN/SAC Code")
                        {
                        }
                        column(ItemNo; "Sales Invoice Line"."No.")
                        {
                        }
                        column(Description; "Sales Invoice Line".Description)
                        {
                        }
                        column(UOM; "Sales Invoice Line"."Unit of Measure Code")
                        {
                        }
                        column(Quantity; "Sales Invoice Line".Quantity)
                        {
                        }
                        column(UnitPrice; "Sales Invoice Line"."Unit Price")
                        {
                        }
                        column(Amount; "Sales Invoice Line".Amount)
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
                        dataitem("Value Entry"; "Value Entry")
                        {
                            DataItemLink = "Document No." = FIELD("Document No."),
                                           "Document Line No." = FIELD("Line No.");

                            dataitem("Item Ledger Entry"; "Item Ledger Entry")
                            {
                                DataItemLink = "Entry No." = FIELD("Item Ledger Entry No.");
                                column(LotNo; "Item Ledger Entry"."Lot No.")
                                {
                                }
                            }
                        }


                        trigger OnAfterGetRecord();
                        begin
                            SrNo += 1;
                            //TotalAmount += "Sales Line".Amount;

                            CGST := 0;
                            IGST := 0;
                            SGST := 0;
                            CGSTPer := 0;
                            SGSTPer := 0;
                            IGSTPer := 0;
                            //>>PCPL/BPPL/010
                            GLE.RESET;
                            GLE.SETRANGE(GLE."Document No.", "Sales Invoice Line"."Document No.");
                            GLE.SETRANGE(GLE."HSN/SAC Code", "Sales Invoice Line"."HSN/SAC Code");
                            GLE.SETRANGE(GLE."Transaction Type", GLE."Transaction Type"::Sales);
                            IF GLE.FINDSET THEN BEGIN
                                REPEAT
                                    IF GLE."GST Component Code" = 'CGST' THEN BEGIN
                                        CGST := ABS(GLE."GST Amount");
                                        CGSTPer := GLE."GST %";
                                    END
                                    ELSE
                                        IF GLE."GST Component Code" = 'IGST' THEN BEGIN
                                            IGST := ABS(GLE."GST Amount");
                                            IGSTPer := GLE."GST %";
                                        END
                                        ELSE
                                            IF GLE."GST Component Code" = 'SGST' THEN BEGIN
                                                SGST := ABS(GLE."GST Amount");
                                                SGSTPer := GLE."GST %";
                                            END;
                                UNTIL GLE.NEXT = 0;

                            END;
                            //<<PCPL/MIG/NSW New code add for Tcs Amt Get
                            if SalesInvLine.Get("Sales Invoice Line"."Document No.", "Sales Invoice Line"."Line No.") then
                                TaxRecordID := SalesInvLine.RecordId();

                            // GetTcsAmtLineWise(TaxRecordID, ComponentJobject);
                            //TotalAmount := 0;
                            recSalesInvoiceLine.RESET;
                            recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                            recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                            IF recSalesInvoiceLine.FINDFIRST THEN
                                REPEAT
                                    TotalAmount += recSalesInvoiceLine.Amount;
                                UNTIL recSalesInvoiceLine.NEXT = 0;

                            //LineDiscountAmt+="Sales Invoice Line"."Line Discount Amount";



                            /*PostedStrOrderdetailLines.RESET;
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", "Sales Invoice Line"."Document No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group", 'INSURANCE');
                            //PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Document Type","Sales Invoice Line"."Document Type");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", "Sales Invoice Line"."No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", "Sales Invoice Line"."Line No.");
                            IF PostedStrOrderdetailLines.FINDFIRST THEN BEGIN
                                Insurance := PostedStrOrderdetailLines."Calculation Value";
                        END;*/
                            /*
                            CNT +=1;
                            //PCPL-25
                            IF CNT <= "Sales Invoice Line".COUNT THEN BEGIN
                              PostedStrOrderdetailLines.RESET;
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.","Sales Invoice Line"."Document No.");
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type",PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group",'FREIGHT');
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.","Sales Invoice Line"."No.");
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.","Sales Invoice Line"."Line No.");
                              PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines.Type,PostedStrOrderdetailLines.Type::Sale);
                              IF PostedStrOrderdetailLines.FINDFIRST  THEN BEGIN
                                   //Frieght:=PostedStrOrderdetailLines."Calculation Value";\
                                Frieght +=PostedStrOrderdetailLines.Amount;    //PCPL-25
                              END;
                            END;
                            Frieght := Frieght;
                            Cnt122 := "Sales Invoice Line".COUNT;
                            //PCPL-25
                            */

                        end;

                        trigger OnPreDataItem();
                        begin
                            NoOfRecords := "Sales Invoice Line".COUNT;
                            //LineDiscountAmt:=0;
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
                    NoOfLoops := ABS(3) + 1;
                    IF NoOfLoops <= 1 THEN
                        NoOfLoops := 1;
                    COPYTEXT := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutPutNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                /*
                //PCPL-25
                SInvLine.RESET;
                SInvLine.SETRANGE(SInvLine."Document No.","No.");
                IF SInvLine.FINDSET THEN REPEAT
                  PostedStrOrderdetailLines.RESET;
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.",SInvLine."Document No.");
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type",PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group",'FREIGHT');
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.",SInvLine."No.");
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.",SInvLine."Line No.");
                  PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines.Type,PostedStrOrderdetailLines.Type::Sale);
                  IF PostedStrOrderdetailLines.FINDFIRST  THEN BEGIN
                    Frieght +=PostedStrOrderdetailLines.Amount;    //PCPL-25
                  END;
                UNTIL SInvLine.NEXT=0;
                //PCPL-25
                */

                //PCPL41
                SInvLine.RESET;
                SInvLine.SETRANGE(SInvLine."Document No.", "No.");
                IF SInvLine.FINDSET THEN
                    REPEAT
                    //pooja064 1032022
                    /* PostedStrOrderdetailLines.RESET;
                     PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", SInvLine."Document No.");
                     PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", SInvLine."No.");
                     PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", SInvLine."Line No.");
                     PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines.Type, PostedStrOrderdetailLines.Type::Sale);
                     PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                     IF PostedStrOrderdetailLines.FINDFIRST THEN
                         REPEAT
                             IF (PostedStrOrderdetailLines."Tax/Charge Group" = 'FREIGHT') OR (PostedStrOrderdetailLines."Tax/Charge Group" = 'COURIER') THEN
                                 Frieght += PostedStrOrderdetailLines.Amount;
                         UNTIL PostedStrOrderdetailLines.NEXT = 0;*/
                    //pooja064 3102022
                    UNTIL SInvLine.NEXT = 0;
                //PCPL41

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

                //PCPL-25
                CLEAR(shipPanNo);
                CLEAR(ShipState);
                CLEAR(ShipStateCode);
                IF "Sales Invoice Header"."Ship-to Code" <> '' THEN BEGIN
                    ShiptoAddress.RESET;
                    ShiptoAddress.SETRANGE(ShiptoAddress.Code, "Sales Invoice Header"."Ship-to Code");
                    IF ShiptoAddress.FINDFIRST THEN BEGIN
                        shipPanNo := '';// ShiptoAddress."P.A.N.No.";
                        GSTNoShip := ShiptoAddress."GST Registration No.";
                        RecState12.RESET;
                        RecState12.SETRANGE(RecState12.Code, ShiptoAddress.State);
                        IF RecState12.FINDFIRST THEN BEGIN
                            ShipState := RecState12.Description;
                            ShipStateCode := RecState12."State Code (GST Reg. No.)";
                        END;
                    END;
                END
                ELSE BEGIN
                    cust12.RESET;
                    cust12.SETRANGE(cust12."No.", "Sales Invoice Header"."Bill-to Customer No.");
                    IF cust12.FINDFIRST THEN BEGIN
                        shipPanNo := cust12."P.A.N. No.";
                        GSTNoShip := cust12."GST Registration No.";
                        RecState12.RESET;
                        RecState12.SETRANGE(RecState12.Code, cust12."State Code");
                        IF RecState12.FINDFIRST THEN BEGIN
                            ShipState := RecState12.Description;
                            ShipStateCode := RecState12."State Code (GST Reg. No.)";
                        END;
                    END;
                END;
                //PCPL-25

                /*recCust.GET("Sales Invoice Header"."Sell-to Customer No.");


                 CustAddr[1] := recCust."No.";
                 CustAddr[2] := recCust.Name;
                 CustAddr[3] := recCust.Address;
                 CustAddr[4] := recCust."Address 2";
                 CustAddr[5] := recCust.City;
                 CustAddr[6] := recCust."Post Code";
                */
                IF
                "Sales Invoice Header"."Location Code" = 'UNIT1' THEN
                    Add := 'Unit I 6 1A & 2, Brahma Compound, Val Village, Rehanal, Thane - 421302, Maharashtra'
                ELSE
                    IF "Sales Invoice Header"."Location Code" = 'UNIT2' THEN
                        Add := 'Unit II-Plot No. 288, Abitghar, Sathepada, Near Sati Rolling Mill, Tal. Wada, Dist. Palghar-421303';


                IF ShiAgent.GET("Sales Invoice Header"."Shipping Agent Code") THEN;
                IF RecState.GET()/*(CompanyInfo.State) */THEN BEGIN
                    StateName := RecState.Description;
                    StateCode := '';//RecState."State Code for TIN";
                END;

                IF RCust.GET("Sales Invoice Header"."Sell-to Customer No.") THEN BEGIN
                    IF RecState.GET(RCust."State Code") THEN;
                END;

                IF "Sales Invoice Header"."Ship-to Code" <> '' THEN BEGIN
                    recCust.RESET;
                    recCust.SETRANGE(recCust."No.", "Sales Invoice Header"."Bill-to Customer No.");
                    IF recCust.FINDFIRST THEN
                        PANShip := recCust."P.A.N. No.";
                END;
                //PCPL50
                recCust.RESET;
                recCust.SETRANGE(recCust."No.", "Sales Invoice Header"."Bill-to Customer No.");
                IF recCust.FINDFIRST THEN
                    URNNo := recCust."URN No.";
                //PCPL50
                IF RCust.GET("Sales Invoice Header"."Bill-to Customer No.") THEN;

                SIL.RESET;
                SIL.SETRANGE(SIL."Document No.", "Sales Invoice Header"."No.");
                IF SIL.FINDSET THEN
                    REPEAT
                        LineDiscountAmt += SIL."Line Discount Amount";
                    UNTIL SIL.NEXT = 0;

                FormatAddr.SalesInvBillTo(CustAddr, "Sales Invoice Header");
                FormatAddr.SalesInvShipTo(ShipToAddr, CustAddr, "Sales Invoice Header");

                ShipToAdd.RESET;
                ShipToAdd.SETRANGE(Code, "Sales Invoice Header"."Ship-to Code");
                IF ShipToAdd.FINDFIRST THEN
                    //GSTNoShip := ShipToAdd."GST Registration No.";

                    //Amount in Words
                    // TotalAmount := 0;
                    // TCSAmt := 0;
                    // TcsPercent := 0;
                    // recSalesInvoiceLine.RESET;
                    // recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                    // recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                    // IF recSalesInvoiceLine.FINDFIRST THEN
                    //     REPEAT
                    //         TotalAmount += recSalesInvoiceLine.Amount;
                    //         TCSAmt += 0;//recSalesInvoiceLine."Total TDS/TCS Incl. SHE CESS";
                    //         TcsPercent := 0;// recSalesInvoiceLine."TDS/TCS %";
                    //         NatureTCS := recSalesInvoiceLine."TCS Nature of Collection";
                    //     UNTIL recSalesInvoiceLine.NEXT = 0;

                    //GetStatisticsAmountPostedInvoice("Sales Invoice Header", TCSAmt);
                    // Message(Format(TCSAmt));
                    // Message(Format(TcsPercent));

                    SGSTAmount := 0;
                CGSTAmount := 0;
                IGSTAmount := 0;
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Sales Invoice Header"."No.");
                GLE.SETRANGE("Entry Type", GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDFIRST THEN
                    REPEAT
                        IF GLE."GST Component Code" = 'IGST' THEN BEGIN
                            IGSTAmount += ABS(GLE."GST Amount");
                        END
                        ELSE
                            IF GLE."GST Component Code" = 'SGST' THEN BEGIN
                                SGSTAmount += ABS(GLE."GST Amount");
                            END ELSE
                                IF GLE."GST Component Code" = 'CGST' THEN BEGIN
                                    CGSTAmount += ABS(GLE."GST Amount");
                                END;

                    UNTIL GLE.NEXT = 0;
                //Frieght
                recSalesReceivablessetup.Get();
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablessetup.Frieght);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght := recSalesInvoiceLine."Line Amount";
                end;

                //Insurance
                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablesSetup.Insurance);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Insurance := recSalesInvoiceLine."Line Amount";

                end;


                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::"G/L Account");
                recSalesInvoiceLine.SetRange("No.", recSalesReceivablesSetup.Courier);
                IF recSalesInvoiceLine.FINDFIRST THEN begin
                    Frieght += recSalesInvoiceLine."Line Amount";

                end;


                recSalesInvoiceLine.RESET;
                recSalesInvoiceLine.SETRANGE(recSalesInvoiceLine."Document No.", "Sales Invoice Header"."No.");
                recSalesInvoiceLine.SETRANGE(Type, recSalesInvoiceLine.Type::Item);
                IF recSalesInvoiceLine.FindSet() THEN
                    REPEAT
                        GrossTotal += recSalesInvoiceLine.Amount;
                    UNTIL recSalesInvoiceLine.NEXT = 0;


                EINV.RESET;
                EINV.SETRANGE("Document No.", "No.");
                EINV.SETFILTER("E-Invoice IRN No.", '<>%1', '');
                IF EINV.FINDFIRST THEN begin
                    EInv.CalcFields("E-Invoice QR Code")
                end;

                GetStatisticsAmount("Sales Invoice Header", TCSAmt, TCSPercent);

                repCheck.InitTextVariable;
                repCheck.FormatNoText(AmountinWords, ROUND((GrossTotal + IGSTAmount + SGSTAmount + CGSTAmount + TCSAmt + Frieght + Insurance)), "Sales Invoice Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(CGSTWords, CGSTAmount, "Sales Invoice Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(SGSTWords, SGSTAmount, "Sales Invoice Header"."Currency Code");

                repCheck.InitTextVariable;
                repCheck.FormatNoText(IGSTWOrds, IGSTAmount, "Sales Invoice Header"."Currency Code");


                //PCPL-065
                ShipToAddress1.Reset();
                ShipToAddress1.SetRange("Customer No.", "Sales Invoice Header"."Sell-to Customer No.");
                if ShipToAddress1.FindFirst() then;

                Customer.GET("Sales Invoice Header"."Sell-to Customer No.");
                if ("Sales Invoice Header"."Ship-to Code" <> '') then begin
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

                //PCPL-065

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
        SalesInvLine: Record 113;
        EInv: record "E-Invoice Detail";
        GrossTotal: Decimal;
        ComponentJobject: JsonObject;
        TaxRecordID: RecordId;
        CompanyInfo: Record 79;
        FormatAddr: Codeunit 365;
        CustAddr: array[8] of Text;
        CompanyAddr: array[8] of Text;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        OutPutNo: Integer;
        TEXT001: Label 'Original for Recipient';
        COPYTEXT: Text;
        TEXT002: Label 'Duplicate for Transporter';
        TEXT003: Label '"Triplicate for Supplier  "';
        TEXT004: Label 'Extra Copy';
        PageCaption: Label 'Page %1 of %2';
        NoOfRows: Integer;
        NoOfRecords: Integer;
        recCust: Record 18;
        repCheck: Codeunit 50000;
        AmountinWords: array[5] of Text[250];
        TotalAmount: Decimal;
        recSalesInvoiceLine: Record 113;
        SrNo: Integer;
        GLE: Record "Detailed GST Ledger Entry";
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
        RecState: Record "State";
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
        //PostedStrOrderdetailLines: Record 13798;
        RCust: Record 18;
        ShipToAdd: Record 222;
        GSTNoShip: Code[20];
        PANShip: Code[20];
        CGSTWords: array[5] of Text[250];
        SGSTWords: array[5] of Text[250];
        IGSTWOrds: array[5] of Text[250];
        Add: Text[250];
        ShiAgent: Record 291;
        LineDiscountAmt: Decimal;
        SIL: Record 113;
        DECI: Integer;
        DECARRAY: array[5] of Text[250];
        ShiptoAddress: Record 222;
        RecState12: Record "State";
        shipPanNo: Code[50];
        ShipState: Text;
        ShipStateCode: Code[20];
        cust12: Record 18;
        Text005: Label '* Certified that the particulars given above are true & correct and amount indicated the price actually charged and that there is no additional consideration flowing directly or indirectly from the buyer. * Interest will be recovered @ 24% P.A. on overdue and paid bills after due dates. *A claim of any nature whatsoever will lapse unless raised in writing within 4 working days from the date of invoice.';
        Text006: Label '*Goods once sold cannot be returned and / or exchanged. *We reserved to ourselves the right to demand payment of this bill at any time before the due date. *Payments should be made by NEFT/RTGS/DD/A/c Payee Cheque only at our Thane office. *Customers are expected to evaluate all pros and cons of the product in their applications prior to using in bulk.*Manufacturer’s liability shall not exceed beyond the value of the product. *Our responsibility ceases on delivery of the goods to the carriers. * In case of any legal dispute where amicable settlement is not possible, the case will be subject to "THANE JURISDICTION ONLY".';
        CNT: Integer;
        FrAmt: Decimal;
        Cnt122: Integer;
        SInvLine: Record 113;
        URNNo: Code[17];
        TCSAmt: Decimal;
        TcsPercent: Decimal;
        NatureTCS: Text;
        recSalesReceivablessetup: Record "Sales & Receivables Setup";
        ShipToAddress1: Record "Ship-to Address";
        ShipToGSTRegistration: Code[20];
        ShipToPANNo: Code[20];
        Customer: Record Customer;
        SIH: Record "Sales Invoice Header";

    local procedure GetTcsAmtLineWise(TaxRecordID: RecordId; var JObject: JsonObject)
    var
        TaxTransactionValue: Record "Tax Transaction Value";
        TaxTypeObjHelper: Codeunit "Tax Type Object Helper";
        ComponentAmt: Decimal;
        JArray: JsonArray;
        ComponentJObject: JsonObject;
    begin
        if not GuiAllowed then
            exit;

        TaxTransactionValue.SetFilter("Tax Record ID", '%1', TaxRecordID);
        TaxTransactionValue.SetFilter("Value Type", '%1', TaxTransactionValue."Value Type"::Component);
        TaxTransactionValue.SetRange("Visible on Interface", true);
        TaxTransactionValue.SetRange("Tax Type", 'TCS');
        if TaxTransactionValue.FindFirst() then begin
            Clear(ComponentJObject);
            ComponentAmt := TaxTypeObjHelper.GetComponentAmountFrmTransValue(TaxTransactionValue);
        end;
        TCSAmt += ComponentAmt;
        TcsPercent := TaxTransactionValue.Percent;
        // Message(Format(TCSAmt));
        // Message(Format(TcsPercent));
    end;

    procedure GetStatisticsAmount(
           SalesHeader: Record "Sales Invoice Header";
           var TCSAmount: Decimal; var TCSPercent: Decimal)
    var
        SalesLine: Record "Sales Invoice Line";
        TCSManagement: Codeunit "TCS Management";
        i: Integer;
        RecordIDList: List of [RecordID];
    begin
        Clear(TCSAmount);
        Clear(TCSPercent);

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

