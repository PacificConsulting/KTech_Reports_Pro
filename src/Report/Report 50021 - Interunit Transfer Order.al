report 50021 "Interunit Transfer Order"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\Interunit Transfer Order.rdl';
    ApplicationArea = all;
    UsageCategory = ReportsAndAnalysis;
    dataset
    {
        dataitem("Transfer Header"; "Transfer Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Posting Date";
            column(shipPanNo; shipPanNo)
            {
            }
            column(ShipState; ShipState)
            {
            }
            column(ShipStateCode; ShipStateCode)
            {
            }
            column(TransferfromCode_TransferHeader; "Transfer Header"."Transfer-from Code")
            {
            }
            column(TransferfromName_TransferHeader; "Transfer Header"."Transfer-from Name")
            {
            }
            column(TransferfromName2_TransferHeader; "Transfer Header"."Transfer-from Name 2")
            {
            }
            column(TransferfromAddress_TransferHeader; "Transfer Header"."Transfer-from Address")
            {
            }
            column(TransferfromAddress2_TransferHeader; "Transfer Header"."Transfer-from Address 2")
            {
            }
            column(TransferfromPostCode_TransferHeader; "Transfer Header"."Transfer-from Post Code")
            {
            }
            column(TransferfromCity_TransferHeader; "Transfer Header"."Transfer-from City")
            {
            }
            column(TransferfromCounty_TransferHeader; "Transfer Header"."Transfer-from County")
            {
            }
            column(TrsffromCountryRegionCode_TransferHeader; "Transfer Header"."Trsf.-from Country/Region Code")
            {
            }
            column(TransfertoCode_TransferHeader; "Transfer Header"."Transfer-to Code")
            {
            }
            column(TransfertoName_TransferHeader; "Transfer Header"."Transfer-to Name")
            {
            }
            column(TransfertoName2_TransferHeader; "Transfer Header"."Transfer-to Name 2")
            {
            }
            column(TransfertoAddress_TransferHeader; "Transfer Header"."Transfer-to Address")
            {
            }
            column(TransfertoAddress2_TransferHeader; "Transfer Header"."Transfer-to Address 2")
            {
            }
            column(TransfertoPostCode_TransferHeader; "Transfer Header"."Transfer-to Post Code")
            {
            }
            column(TransfertoCity_TransferHeader; "Transfer Header"."Transfer-to City")
            {
            }
            column(TransfertoCounty_TransferHeader; "Transfer Header"."Transfer-to County")
            {
            }
            column(TrsftoCountryRegionCode_TransferHeader; "Transfer Header"."Trsf.-to Country/Region Code")
            {
            }
            column(ModeOfTransport; "Transfer Header"."Mode of Transport")
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
            column(PostingDate_TransferHeader; "Transfer Header"."Posting Date")
            {
            }
            column(No_TransferHeader; "Transfer Header"."No.")
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
            column(EWayBillNo_TransferHeader; "Transfer Header"."E-Way Bill No.")
            {
            }
            column(EWayBillDate_TransferHeader; "Transfer Header"."E-Way Bill Date")
            {
            }
            column(VehicleNo_TransferHeader; "Transfer Header"."Vehicle No.")
            {
            }
            column(ShipAgntName; ShipAgntName)
            {
            }
            column(StateCodeTo; StateCodeTo)
            {
            }
            column(StateNameTo; StateNameTo)
            {
            }
            column(GSTRegNo; GSTRegNo)
            {
            }
            column(GSTRegNoTo; GSTRegNoTo)
            {
            }
            column(TEXT005; TEXT005)
            {
            }
            column(TEXT006; TEXT006)
            {
            }
            column(TEXT007; TEXT007)
            {
            }
            column(TEXT008; TEXT008)
            {
            }
            column(TEXT009; TEXT009)
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
                    column(Frieght; Frieght)
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
                    dataitem("Transfer Line"; "Transfer Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Transfer Header";
                        DataItemTableView = WHERE("Quantity" = FILTER(<> 0));
                        column(DocumentNo_TransferLine; "Transfer Line"."Document No.")
                        {
                        }
                        column(LineNo_TransferLine; "Transfer Line"."Line No.")
                        {
                        }
                        column(CGST; CGST)
                        {
                        }
                        column(SGST; SGST)
                        {
                        }
                        column(IGST; IGST)
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
                        column(SrNo; SrNo)
                        {
                        }
                        column(HSNSACCode_TransferLine; "Transfer Line"."HSN/SAC Code")
                        {
                        }
                        column(Description; "Transfer Line".Description)
                        {
                        }
                        column(Units_per_Parcel; "Units per Parcel")
                        {

                        }
                        column(Quantity; "Transfer Line".Quantity)
                        {
                        }

                        column(UOM; "Transfer Line"."Unit of Measure Code")
                        {
                        }
                        column(UnitPrice; "Transfer Line"."Unit Volume")
                        {
                        }
                        column(Amount; "Transfer Line".Amount)
                        {
                        }
                        column(HSNHACCode; RecTransferLine."HSN/SAC Code")
                        {
                        }
                        column(TotalAmount; TotalAmount)
                        {
                        }
                        column(NoofPackages_TransferLine; "Transfer Line"."No. of Packages")
                        {
                        }
                        column(IdentificationNo_TransferLine; "Transfer Line"."Identification No.")
                        {
                        }
                        column(TransferPrice_TransferLine; "Transfer Line"."Transfer Price")
                        {
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
                            GLE.SETRANGE(GLE."Document No.", "Transfer Line"."Document No.");
                            GLE.SETRANGE(GLE."HSN/SAC Code", "Transfer Line"."HSN/SAC Code");
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

                            TotalAmount := 0;
                            RecTransferLine.RESET;
                            RecTransferLine.SETRANGE(RecTransferLine."Document No.", "Transfer Header"."No.");
                            //RecTransferLine.SETRANGE(Type,RecTransferLine.Type::Item);
                            IF RecTransferLine.FINDFIRST THEN
                                REPEAT
                                    TotalAmount += RecTransferLine.Amount;
                                UNTIL RecTransferLine.NEXT = 0;

                            //LineDiscountAmt+="Transfer Line"."Line Discount Amount";

                            //<<PCPl/pooja/064   300922
                            /*
                            PostedStrOrderdetailLines.RESET;
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", "Transfer Line"."Document No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group", 'INSURANCE');
                            //PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Document Type","Transfer Line"."Document Type");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", "Transfer Line"."Document No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", "Transfer Line"."Line No.");
                            IF PostedStrOrderdetailLines.FINDFIRST THEN BEGIN
                                Insurance := PostedStrOrderdetailLines."Calculation Value";
                            END;




                            PostedStrOrderdetailLines.RESET;
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Invoice No.", "Transfer Line"."Document No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Type", PostedStrOrderdetailLines."Tax/Charge Type"::Charges);
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Tax/Charge Group", 'FREIGHT');
                            //PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Document Type","Transfer Line"."Document Type");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Item No.", "Transfer Line"."Document No.");
                            PostedStrOrderdetailLines.SETRANGE(PostedStrOrderdetailLines."Line No.", "Transfer Line"."Line No.");
                            IF PostedStrOrderdetailLines.FINDFIRST THEN BEGIN
                                Frieght := PostedStrOrderdetailLines."Calculation Value";
                            END;
                            */
                            //<<PCPl/pooja/064   300922
                        end;

                        trigger OnPreDataItem();
                        begin
                            NoOfRecords := "Transfer Line".COUNT;
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
                                COPYTEXT := TEXT004;
                                OutPutNo += 1;
                            END;

                    SrNo := 0;

                    //CurrReport.PAGENO := 1;
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(2) + 1;
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
                RecTransferLine.RESET;
                RecTransferLine.SETRANGE(RecTransferLine."Document No.", "No.");
                IF RecTransferLine.FINDFIRST THEN
                    REPEAT
                        IF RecTransferLine."Document No." = '' THEN BEGIN
                            DECI += 1;
                            DECARRAY[DECI] := RecTransferLine.Description;
                        END;
                    UNTIL RecTransferLine.NEXT = 0;
                //PCPL0024---End

                /*
                //PCPL-25
                CLEAR(shipPanNo);
                CLEAR(ShipState);
                CLEAR(ShipStateCode);
                IF "Transfer Header"."Ship-to Code" <> '' THEN BEGIN
                  ShiptoAddress.RESET;
                  ShiptoAddress.SETRANGE(ShiptoAddress.Code,"Transfer Header"."Ship-to Code");
                  IF ShiptoAddress.FINDFIRST THEN BEGIN
                    shipPanNo := ShiptoAddress."P.A.N.No.";
                    GSTNoShip := ShiptoAddress."GST Registration No.";
                    RecState12.RESET;
                    RecState12.SETRANGE(RecState12.Code,ShiptoAddress.State);
                    IF RecState12.FINDFIRST THEN BEGIN
                      ShipState := RecState12.Description;
                      ShipStateCode := RecState12."State Code (GST Reg. No.)";
                    END;
                  END;
                END
                ELSE BEGIN
                  cust12.RESET;
                  cust12.SETRANGE(cust12."No.","Transfer Header"."Bill-to Customer No.");
                  IF cust12.FINDFIRST THEN BEGIN
                    shipPanNo := cust12."P.A.N. No.";
                    GSTNoShip := cust12."GST Registration No.";
                    RecState12.RESET;
                    RecState12.SETRANGE(RecState12.Code,cust12."State Code");
                    IF RecState12.FINDFIRST THEN BEGIN
                      ShipState :=  RecState12.Description;
                      ShipStateCode := RecState12."State Code (GST Reg. No.)";
                    END;
                  END;
                END;
                //PCPL-25
                */

                /*recCust.GET("Transfer Header"."Sell-to Customer No.");
                
                
                 CustAddr[1] := recCust."No.";
                 CustAddr[2] := recCust.Name;
                 CustAddr[3] := recCust.Address;
                 CustAddr[4] := recCust."Address 2";
                 CustAddr[5] := recCust.City;
                 CustAddr[6] := recCust."Post Code";
                */

                /*
                IF
                "Transfer Header"."Location Code" ='UNIT1' THEN
                   Add:='Unit I-6 1A & 2, Brahma Compound, Val Village, Rehanal, Thane - 421302, Maharashtra'
                ELSE IF "Transfer Header"."Location Code" ='UNIT2' THEN
                   Add:='Unit II-Plot No. 288, Abitghar, Sathepada, Near Sati Rolling Mill, Tal. Wada, Dist. Palghar-421303';
                */

                IF ShiAgent.GET("Transfer Header"."Shipping Agent Code") THEN;
                IF RecState.GET()/*(CompanyInfo."State")*/ THEN BEGIN
                    StateName := RecState.Description;
                    StateCode := ''// RecState."State Code for TIN";
                END;

                /*
                IF RCust.GET("Transfer Header"."Sell-to Customer No.") THEN BEGIN
                   IF RecState.GET(RCust."State Code") THEN;
                END;
                */

                /*
                IF "Transfer Header"."Ship-to Code" <> '' THEN BEGIN
                    recCust.RESET;
                    recCust.SETRANGE(recCust."No.","Transfer Header"."Bill-to Customer No.");
                    IF recCust.FINDFIRST THEN
                        PANShip:=recCust."P.A.N. No.";
                END;
                */

                /*
                IF RCust.GET("Transfer Header"."Bill-to Customer No.") THEN;
                */

                /*
                TransLine.RESET;
                TransLine.SETRANGE(TransLine."Document No.","Transfer Header"."No.");
                IF TransLine.FINDSET THEN REPEAT
                   LineDiscountAmt+=TransLine."Line Discount Amount";
                   UNTIL TransLine.NEXT=0;
                */

                /*
                 FormatAddr.SalesInvBillTo(CustAddr,"Transfer Header");
                 FormatAddr.SalesInvShipTo(ShipToAddr,"Transfer Header");
                */

                /*
                ShipToAdd.RESET;
                ShipToAdd.SETRANGE(Code,"Transfer Header"."Ship-to Code");
                IF ShipToAdd.FINDFIRST THEN
                 //GSTNoShip := ShipToAdd."GST Registration No.";

                //Amount in Words
                TotalAmount := 0;
                */
                RecTransferLine.RESET;
                RecTransferLine.SETRANGE(RecTransferLine."Document No.", "Transfer Header"."No.");
                // RecTransferLine.SETRANGE(RecTransferLine.Type, RecTransferLine.Type::Item);
                IF RecTransferLine.FINDFIRST THEN
                    REPEAT
                        TotalAmount += RecTransferLine.Amount;
                    UNTIL RecTransferLine.NEXT = 0;



                SGSTAmount := 0;
                CGSTAmount := 0;
                IGSTAmount := 0;
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Transfer Header"."No.");
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
                /*
                Frieght := 0;
                Insurance := 0;
                OtherCharges := 0;
                PostedStrOrderdetailLines.RESET;
                PostedStrOrderdetailLines.SETRANGE("Document Type",PostedStrOrderdetailLines."Document Type"::Invoice);
                PostedStrOrderdetailLines.SETRANGE(Type,PostedStrOrderdetailLines.Type::Sale);
                PostedStrOrderdetailLines.SETRANGE("Invoice No.","Transfer Header"."No.");
                IF PostedStrOrderdetailLines.FINDFIRST THEN REPEAT
                   IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      OtherCharges += PostedStrOrderdetailLines.Amount
                   ELSE IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      Frieght += PostedStrOrderdetailLines.Amount
                   ELSE IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                      Insurance += PostedStrOrderdetailLines.Amount;
                UNTIL PostedStrOrderdetailLines.NEXT=0;
                PostedStrOrderdetailLines.RESET;
                PostedStrOrderdetailLines.SETRANGE("Document Type",PostedStrOrderdetailLines."Document Type"::Invoice);
                PostedStrOrderdetailLines.SETRANGE(Type,PostedStrOrderdetailLines.Type::Sale);
                PostedStrOrderdetailLines.SETRANGE("Invoice No.","Transfer Header"."No.");
                IF PostedStrOrderdetailLines.FINDFIRST THEN REPEAT
                   IF PostedStrOrderdetailLines."Tax/Charge Type" = PostedStrOrderdetailLines."Tax/Charge Type" :: Charges THEN
                    Frieght+= PostedStrOrderdetailLines.Amount;
                UNTIL PostedStrOrderdetailLines.NEXT=0;
                */

                repCheck.InitTextVariable;
                repCheck.FormatNoText(AmountinWords, Round(TotalAmount + IGSTAmount + SGSTAmount + CGSTAmount), '');

                repCheck.InitTextVariable;
                repCheck.FormatNoText(CGSTWords, CGSTAmount, '');

                repCheck.InitTextVariable;
                repCheck.FormatNoText(SGSTWords, SGSTAmount, '');

                repCheck.InitTextVariable;
                repCheck.FormatNoText(IGSTWOrds, IGSTAmount, '');

                IF ShipAgntCode.GET("Transfer Header"."Shipping Agent Code") THEN
                    ShipAgntName := ShipAgntCode.Name;

                IF recLocation.GET("Transfer Header"."Transfer-from Code") THEN BEGIN
                    StateCode := recLocation."State Code";
                    GSTRegNo := recLocation."GST Registration No.";
                    //PANNo := recLocation.p.
                    IF RecState.GET(StateCode) THEN
                        StateName := RecState.Description;
                END;

                IF recLocation.GET("Transfer Header"."Transfer-to Code") THEN BEGIN
                    StateCodeTo := recLocation."State Code";
                    GSTRegNoTo := recLocation."GST Registration No.";
                    //PANNoTo := recLocation.pa
                    IF RecState.GET(StateCodeTo) THEN
                        StateNameTo := RecState.Description;
                END;

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
        RecTransferLine: Record 5741;
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
        TransLine: Record 5741;
        DECI: Integer;
        DECARRAY: array[5] of Text[250];
        ShiptoAddress: Record 222;
        RecState12: Record "State";
        shipPanNo: Code[50];
        ShipState: Text;
        ShipStateCode: Code[20];
        cust12: Record 18;
        ShipAgntCode: Record 291;
        ShipAgntName: Text;
        GSTRegNo: Code[20];
        PANNo: Code[10];
        StateCodeTo: Code[10];
        StateNameTo: Text;
        GSTRegNoTo: Code[20];
        PANNoTo: Code[10];
        TEXT005: Label 'Terms & Conditions:';
        TEXT006: Label '1. Certified that the particulars given above are true & correct and the materials are only for interunit transfer.';
        TEXT007: Label '2. Any complaint regarding this challan to be made within four working days.';
        TEXT008: Label '3. Our responsibility ceases on delivery of the goods to the carriers.';
        TEXT009: Label '4. All transactions are subject to Thane Jurisdiction only.';
}

