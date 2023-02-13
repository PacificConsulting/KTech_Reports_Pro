report 50051 "Sales - Credit Memo"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'src\Report Layout\SalesCreditMemo.rdl';
    Caption = 'Sales - Credit Memo';
    // Permissions = TableData 7190 = rimd;//pcpl-065


    dataset
    {
        dataitem("Sales Cr.Memo Header"; "Sales Cr.Memo Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Posted Sales Credit Memo';
            column(RegistrationNo1; CompanyInfo."GST Registration No.")
            {
            }
            column(Table_Lines; '')
            {

            }
            column(RegistrationNo; RegistrationNo)
            {
            }
            column(commentvar; commentvar)
            {
            }
            column(Totaltaxamt; Totaltaxamt)
            {
            }
            column(IGSTPer; IGSTPer)
            {
            }
            column(SGSTPer; SGSTPer)
            {
            }
            column(CGSTPer; CGSTPer)
            {
            }
            column(IGSTAmount; IGSTAmount)
            {
            }
            column(SGSTAmount; SGSTAmount)
            {
            }
            column(CGSTAmount; CGSTAmount)
            {
            }
            column(No_SalesCrMemoHeader; "No.")
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(DocCaptionCopyText; STRSUBSTNO(DocumentCaption, CopyText))
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo3.Picture)
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Bill-to Customer No.")
                    {
                    }
                    column(PostDate_SalesCrMemoHeader; FORMAT("Sales Cr.Memo Header"."Posting Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."VAT Registration No.")
                    {
                    }
                    column(No1_SalesCrMemoHeader; "Sales Cr.Memo Header"."No.")
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(AppliedToText; AppliedToText)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourRef_SalesCrMemoHeader; "Sales Cr.Memo Header"."Your Reference")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(DocDate_SalesCrMemoHeader; FORMAT("Sales Cr.Memo Header"."Document Date", 0, 4))
                    {
                    }
                    column(PricIncVAT_SalesCrMemoHeader; "Sales Cr.Memo Header"."Prices Including VAT")
                    {
                    }
                    column(ReturnOrderNoText; ReturnOrderNoText)
                    {
                    }
                    column(RetOrderNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Return Order No.")
                    {
                    }
                    column(SupplementaryText; SupplementaryText)
                    {
                    }
                    column(PageCaption; PageCaptionCap)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricInclVAT1_SalesCrMemoHeader; FORMAT("Sales Cr.Memo Header"."Prices Including VAT"))
                    {
                    }
                    column(VATBaseDiscPct_SalesCrMemoHeader; "Sales Cr.Memo Header"."VAT Base Discount %")
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(RegNoCaption; RegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption; BankNameCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(CrMemoNoCaption; CrMemoNoCaptionLbl)
                    {
                    }
                    column(PostingDateCaption; PostingDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricIncVAT_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        // DataItemLinkReference = "Sales Cr.Memo Header"; //pcpl-065
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_IntegerLine; Number)
                        {
                        }
                        column(HdrDimCaption; HdrDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET THEN
                                    CurrReport.BREAK;
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Cr.Memo Header"; //pcpl-065
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(LineAmt_SalesCrMemoLine; "Line Amount")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }

                        column(Desc_SalesCrMemoLine; Description)
                        {
                        }
                        column(No_; SCML_No)
                        {

                        }

                        // column(No_SalesCrMemoLine; "No.") //pcpl-065
                        // {
                        // }
                        column(Qty_SalesCrMemoLine; Quantity)
                        {
                        }
                        column(UOM_SalesCrMemoLine; "Unit of Measure Code")
                        {
                        }
                        column(UnitPrice_SalesCrMemoLine; "Unit Price")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode; //pcpl-065
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesCrMemoLine; "Line Discount %")
                        {
                        }
                        column(DiscAmt_SalesCrMemoLineLine; "Line Discount Amount")
                        {
                        }
                        column(PostedReceiptDate; FORMAT("Posting Date"))
                        {
                        }
                        column(Type_SalesCrMemoLine; FORMAT(Type))
                        {
                        }
                        column(NNCTotalLineAmt; NNC_TotalLineAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmtInclVat; NNC_TotalAmountInclVat)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalInvDiscAmt; NNC_TotalInvDiscAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmt; NNC_TotalAmount)
                        {
                            AutoFormatExpression = GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(SourceDoctType; '')// 'Ref: ' + FORMAT("Source Document Type", 0))//pcpl-065
                        {
                        }
                        column(SourceDocNo_SalesCrMemoLine; 0)//"Source Document No.") //pcpl-065
                        {
                        }
                        column(Supplementary_SalesCrMemoLine; '')// Supplementary) //pcpl-065
                        {
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(Amt_SalesCrMemoLine; Amount)
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(ExciseAmt_SalesCrMemoLine; 0)//"Excise Amount") //pcpl-065
                        {
                            //  AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(ServTaxAmt_SalesCrMemoLine; 0)//"Service Tax Amount") //pcpl-065
                        {
                            //  AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(ChargesAmount; ChargesAmount)
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(OtherTaxesAmount; OtherTaxesAmount)
                        {
                            //  AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(TotalIncl_SalesCrMemoLine; 0)//"Total TDS/TCS Incl SHE CESS") //pcpl-065
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(ServiceTaxAmt_SalesCrMemoLine; 0)// "Service Tax SHE Cess Amount")//pcpl-065
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode;//pcpl-065
                            AutoFormatType = 1;
                        }
                        column(NNCTotalAmtToCust; NNC_TotalAmountToCustomer)
                        {
                        }
                        column(NNCTotalExciseAmt; NNC_TotalExciseAmount)
                        {
                        }
                        column(NNCTotalTaxAmt; NNC_TotalTaxAmount)
                        {
                        }
                        column(NNCTotalServTaxAmt; NNC_TotalServiceTaxAmount)
                        {
                        }
                        column(NNCTSTaxeCessAmt; NNC_TSTaxeCessAmount)
                        {
                        }
                        column(NNCTSTSHECessAmt; NNC_TSTSHECessAmount)
                        {
                        }
                        column(NNCttdstcsishecess; NNC_TTDSTCSISHECESS)
                        {
                        }
                        column(AmountIncludingVATAmt1; "Amount Including VAT" - Amount)
                        {
                            //  AutoFormatExpression = "Sales Cr.Memo Line".GetCurrencyCode; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText1; VATAmountLine.VATAmountText)
                        {
                        }
                        column(TotalExclVATText1; TotalExclVATText)
                        {
                        }
                        column(LineNo_SalesCrMemoLine; "Line No.")
                        {
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(DiscPercentCaption; DiscPercentCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(DiscAmtCaption; DiscAmtCaptionLbl)
                        {
                        }
                        column(PostedReceiptDateCaption; PostedReceiptDateCaptionLbl)
                        {
                        }
                        column(InvDiscAmtCaption; InvDiscAmtCaptionLbl)
                        {
                        }
                        column(SubTotalCaption; SubTotalCaptionLbl)
                        {
                        }
                        column(ExciseAmtCaption; ExciseAmtCaptionLbl)
                        {
                        }
                        column(TaxAmtCaption; TaxAmtCaptionLbl)
                        {
                        }
                        column(ServTaxAmtCaption; ServTaxAmtCaptionLbl)
                        {
                        }
                        column(ChargesAmtCaption; ChargesAmtCaptionLbl)
                        {
                        }
                        column(OtherTaxesAmtCaption; OtherTaxesAmtCaptionLbl)
                        {
                        }
                        column(ServiceTaxeCessAmtCaption; ServiceTaxeCessAmtCaptionLbl)
                        {
                        }
                        column(TotalTDSIncludingeCessCaption; TotalTDSIncludingeCessCaptionLbl)
                        {
                        }
                        column(TCSAmountCaption; TCSAmountCaptionLbl)
                        {
                        }
                        column(ServiceTaxSHECessAmtCaption; ServiceTaxSHECessAmtCaptionLbl)
                        {
                        }
                        column(PaymentDiscOnVATCaption; PaymentDiscOnVATCaptionLbl)
                        {
                        }
                        column(Desc_SalesCrMemoLineCaption; FIELDCAPTION(Description))
                        {
                        }
                        column(No_SalesCrMemoLineCaption; FIELDCAPTION("Sales Cr.Memo Line"."No."))
                        {
                        }
                        column(Qty_SalesCrMemoLineCaption; FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesCrMemoLineCaption; FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(NNCTotalServTaxSBCAmt; NNC_TotalServiceTaxSBCAmount)
                        {
                        }
                        column(ServTaxSBCAmtCaption; ServTaxSBCAmtCaptionLbl)
                        {
                        }

                        dataitem("Sales Shipment Buffer"; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(SalesShipmentBufferQuantity; SalesShipmentBuffer.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }

                            trigger OnAfterGetRecord()
                            var
                                no: Code[20]; //pcpl-065
                            begin
                                IF Number = 1 THEN
                                    SalesShipmentBuffer.FIND('-')
                                ELSE
                                    SalesShipmentBuffer.NEXT;


                            end;

                            trigger OnPreDataItem()
                            begin
                                SETRANGE(Number, 1, SalesShipmentBuffer.COUNT);
                            end;


                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimCaption; LineDimCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FIND('-') THEN
                                        CurrReport.BREAK;
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                //  DimSetEntry2.SETRANGE("Dimension Set ID", "Sales Cr.Memo Line"."Dimension Set ID"); //pcpl-065
                            end;
                        }

                        trigger OnAfterGetRecord()
                        var
                        // StructureLineDetails: Record 13798; //pcpl-065
                        begin
                            NNC_TotalLineAmount += "Line Amount";
                            NNC_TotalAmountInclVat += "Amount Including VAT";
                            NNC_TotalInvDiscAmount += "Inv. Discount Amount";
                            NNC_TotalAmount += Amount;
                            NNC_TotalAmountToCustomer += 0;//"Amount To Customer";//pcpl-065
                            NNC_TotalExciseAmount += 0;//"Excise Amount";//pcpl-065
                            NNC_TotalTaxAmount += 0;//"Tax Amount";//pcpl-065
                            NNC_TotalServiceTaxAmount += 0;//"Service Tax Amount";//pcpl-065
                            NNC_TSTaxeCessAmount += 0;// "Service Tax eCess Amount";//pcpl-065
                            NNC_TSTSHECessAmount += 0;// "Service Tax SHE Cess Amount";//pcpl-065
                            NNC_TTDSTCSISHECESS += 0;//"Total TDS/TCS Incl SHE CESS";//pcpl-065
                            NNC_TotalServiceTaxSBCAmount += 0;// "Sales Cr.Memo Line"."Service Tax SBC Amount";//pcpl-065

                            SCML_No := "No.";
                            //Message('%1', "No.");

                            SalesShipmentBuffer.DELETEALL;
                            //PostedReceiptDate := 0D;
                            IF Quantity <> 0 THEN
                                PostedReceiptDate := FindPostedShipmentDate;


                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';



                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";

                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine;

                            /* //pcpl-065   
                           StructureLineDetails.RESET;
                           StructureLineDetails.SETRANGE(Type, StructureLineDetails.Type::Sale);
                           StructureLineDetails.SETRANGE("Document Type", StructureLineDetails."Document Type"::"Credit Memo");
                           StructureLineDetails.SETRANGE("Invoice No.", "Document No.");
                           StructureLineDetails.SETRANGE("Item No.", "No.");
                           StructureLineDetails.SETRANGE("Line No.", "Line No.");
                           IF StructureLineDetails.FIND('-') THEN
                               REPEAT
                                   IF NOT StructureLineDetails."Payable to Third Party" THEN BEGIN
                                       IF StructureLineDetails."Tax/Charge Type" = StructureLineDetails."Tax/Charge Type"::Charges THEN
                                           ChargesAmount := ChargesAmount + ROUND(StructureLineDetails.Amount);
                                       IF StructureLineDetails."Tax/Charge Type" = StructureLineDetails."Tax/Charge Type"::"Other Taxes" THEN
                                           OtherTaxesAmount := OtherTaxesAmount + ROUND(StructureLineDetails.Amount);
                                   END;
                               UNTIL StructureLineDetails.NEXT = 0;
                               */
                        end;

                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DELETEALL;
                            SalesShipmentBuffer.RESET;
                            SalesShipmentBuffer.DELETEALL;
                            FirstValueEntryNo := 0;
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
                            /*//pcpl-065
                            CurrReport.CREATETOTALS(Amount, "Amount Including VAT", "Inv. Discount Amount", "Excise Amount", "Tax Amount",
                             "Service Tax Amount", "Service Tax eCess Amount", "Total TDS/TCS Incl SHE CESS", "Service Tax SBC Amount");
                            CurrReport.CREATETOTALS("Amount To Customer", "Service Tax SHE Cess Amount");
                            */ //pcpl-065
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code"; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            //  AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code"; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code"; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            // AutoFormatExpression = "Sales Cr.Memo Header"."Currency Code"; //pcpl-065
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATPercentCaption; VATPercentCaptionLbl)
                        {
                        }
                        column(VATBaseCaption; VATBaseCaptionLbl)
                        {
                        }
                        column(VATAmtCaption; VATAmtCaptionLbl)
                        {
                        }
                        column(VATAmtSpecCaption; VATAmtSpecCaptionLbl)
                        {
                        }
                        column(VATIdentifierCaption; VATIdentifierCaptionLbl)
                        {

                        }
                        column(InvDiscBaseAmtCaption; InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption; LineAmtCaptionLbl)
                        {
                        }
                        column(InvDiscAmt1Caption; InvDiscAmt1CaptionLbl)
                        {
                        }
                        column(TotalCaption; TotalCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVAT1; VATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0 : 5;

                        }
                        column(VATAmtLineVATIdentifier1; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code",
                                "Sales Cr.Memo Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Cr.Memo Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text008 + Text009
                            ELSE
                                VALSpecLCYHeader := Text008 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Cr.Memo Header"."Posting Date", "Sales Cr.Memo Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Cr.Memo Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text010, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SelltoCustNo_SalesCrMemoHeader; "Sales Cr.Memo Header"."Sell-to Customer No.")
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
                        column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                        {
                        }
                        column(SelltoCustNo_SalesCrMemoHeaderCaption; "Sales Cr.Memo Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    CurrReport.PAGENO := 1;
                    IF Number > 1 THEN BEGIN
                        CopyText := Text004;
                        OutputNo += 1;
                    END;

                    NNC_TotalLineAmount := 0;
                    NNC_TotalAmountInclVat := 0;
                    NNC_TotalInvDiscAmount := 0;
                    NNC_TotalAmount := 0;
                    NNC_TotalAmountToCustomer := 0;
                    NNC_TotalExciseAmount := 0;
                    NNC_TotalTaxAmount := 0;
                    NNC_TotalServiceTaxAmount := 0;
                    NNC_TSTaxeCessAmount := 0;
                    NNC_TSTSHECessAmount := 0;
                    NNC_TTDSTCSISHECESS := 0;
                    ChargesAmount := 0;
                    OtherTaxesAmount := 0;
                    NNC_TotalServiceTaxSBCAmount := 0;
                end;

                trigger OnPostDataItem()
                begin
                    IF NOT CurrReport.PREVIEW THEN
                        SalesCrMemoCountPrinted.RUN("Sales Cr.Memo Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            var
                SalesCrMemoLine: Record "Sales Cr.Memo Line";
            begin
                //CurrReport.LANGUAGE := Language.GetLanguageID("Language Code"); //pcpl-065

                CompanyInfo.GET;
                //Start 0028/Avinash
                /*
                RecCustomer.RESET;
                RecCustomer.SETRANGE("No.","Sales Cr.Memo Header"."Sell-to Customer No.");
                IF RecCustomer.FINDFIRST THEN BEGIN
                  RegistrationNo := RecCustomer."GST Registration No.";
                END;
                */
                //Close PCPL 0028/Avinash
                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Return Order No." = '' THEN
                    ReturnOrderNoText := ''
                ELSE
                    ReturnOrderNoText := FIELDCAPTION("Return Order No.");
                IF "Salesperson Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    SalesPersonText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Salesperson Code");
                    SalesPersonText := Text000;
                END;
                IF "Your Reference" = '' THEN
                    ReferenceText := ''
                ELSE
                    ReferenceText := FIELDCAPTION("Your Reference");
                IF "VAT Registration No." = '' THEN
                    VATNoText := ''
                ELSE
                    VATNoText := FIELDCAPTION("VAT Registration No.");
                IF "Currency Code" = '' THEN BEGIN
                    GLSetup.TESTFIELD("LCY Code");
                    TotalText := STRSUBSTNO(Text001, GLSetup."LCY Code");
                    TotalInclVATText := STRSUBSTNO(Text13700, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text13701, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text13700, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text13701, "Currency Code");
                END;
                FormatAddr.SalesCrMemoBillTo(CustAddr, "Sales Cr.Memo Header");
                IF "Applies-to Doc. No." = '' THEN
                    AppliedToText := ''
                ELSE
                    AppliedToText := STRSUBSTNO(Text003, "Applies-to Doc. Type", "Applies-to Doc. No.");

                // FormatAddr.SalesCrMemoShipTo(ShipToAddr, "Sales Cr.Memo Header"); // pcpl-065
                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                IF LogInteraction THEN
                    IF NOT CurrReport.PREVIEW THEN
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              6, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '')
                        ELSE
                            SegManagement.LogDocument(
                              6, "No.", 0, 0, DATABASE::Customer, "Sell-to Customer No.", "Salesperson Code",
                              "Campaign No.", "Posting Description", '');

                SupplementaryText := '';
                SalesCrMemoLine.SETRANGE("Document No.", "No.");
                //SalesCrMemoLine.SETRANGE(Supplementary, TRUE); //pcpl-065
                IF SalesCrMemoLine.FIND('-') THEN
                    SupplementaryText := Text16500;

                //pcpl0024 -- start
                SGSTAmount := 0;
                CGSTAmount := 0;
                IGSTAmount := 0;

                //To Catch All IGST AMT----Start
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Sales Cr.Memo Header"."No."); //pcpl-065
                GLE.SETRANGE(GLE."GST Component Code", 'IGST');
                GLE.SETRANGE("Entry Type", GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDFIRST THEN
                    REPEAT
                        IGSTAmount += ABS(GLE."GST Amount");
                        IGSTPer := GLE."GST %";

                    UNTIL GLE.NEXT = 0;
                //To Catch All IGST AMT----End

                //To Catch All SGST AMT----Start
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Sales Cr.Memo Header"."No."); //pcpl-065
                GLE.SETRANGE(GLE."GST Component Code", 'SGST');
                //GLE.SETRANGE("Entry Type",GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDFIRST THEN
                    REPEAT
                        SGSTAmount += ABS(GLE."GST Amount");
                        SGSTPer := GLE."GST %";
                    UNTIL GLE.NEXT = 0;
                //To Catch All SGST AMT----End

                //To Catch All UGST AMT----Start
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Sales Cr.Memo Header"."No.");
                GLE.SETRANGE(GLE."GST Component Code", 'UTGST');
                //GLE.SETRANGE("Entry Type",GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDFIRST THEN
                    REPEAT
                        SGSTAmount += ABS(GLE."GST Amount");
                        SGSTPer := GLE."GST %";

                    UNTIL GLE.NEXT = 0;
                //To Catch All UGST AMT----End

                //To Catch All CGST AMT----Start
                GLE.RESET;
                GLE.SETRANGE("Document No.", "Sales Cr.Memo Header"."No."); //pcpl-065
                GLE.SETRANGE(GLE."GST Component Code", 'CGST');
                //GLE.SETRANGE("Entry Type",GLE."Entry Type"::"Initial Entry");
                IF GLE.FINDFIRST THEN
                    REPEAT
                        CGSTAmount += ABS(GLE."GST Amount");
                        CGSTPer := GLE."GST %";
                    UNTIL GLE.NEXT = 0;
                //To Catch All CGST AMT----End

                Totaltaxamt := CGSTAmount + SGSTAmount + IGSTAmount;






                Commentrec.RESET;
                Commentrec.SETRANGE(Commentrec."No.", "No.");
                IF Commentrec.FINDFIRST THEN BEGIN
                    commentvar := Commentrec.Comment;
                END
                //pcpl0024 -- END

            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = all;
                        Caption = 'No. of Copies';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = all;
                        Caption = 'Show Internal Information';
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = all;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage()
        begin
            LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin

        GLSetup.GET;
        SalesSetup.GET;
        CASE SalesSetup."Logo Position on Documents" OF
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                BEGIN
                    CompanyInfo1.GET;
                    CompanyInfo1.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Center:
                BEGIN
                    CompanyInfo2.GET;
                    CompanyInfo2.CALCFIELDS(Picture);
                END;
            SalesSetup."Logo Position on Documents"::Right:
                BEGIN
                    CompanyInfo3.GET;
                    CompanyInfo3.CALCFIELDS(Picture);
                END;
        END;
    end;

    trigger OnPreReport()
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label '(Applies to %1 %2)';
        Text004: Label 'COPY';
        Text005: Label 'Sales - Credit Memo %1';
        PageCaptionCap: Label 'Page %1 of %2';
        Text007: Label 'Total %1 Excl. VAT';
        Commentrec: Record 44;
        commentvar: Text[150];
        Totaltaxamt: Decimal;
        GLSetup: Record 98;
        SalesPurchPerson: Record 13;
        CompanyInfo: Record 79;
        CompanyInfo1: Record 79;
        CompanyInfo2: Record 79;
        CompanyInfo3: Record 79;
        SalesSetup: Record 311;
        VATAmountLine: Record 290 temporary;
        DimSetEntry1: Record 480;
        DimSetEntry2: Record 480;
        Language: Record 8;
        SalesShipmentBuffer: Record 7190 temporary;
        CurrExchRate: Record 330;
        SalesCrMemoCountPrinted: Codeunit 316;
        FormatAddr: Codeunit 365;
        SegManagement: Codeunit 5051;
        RespCenter: Record 5714;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        ReturnOrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        AppliedToText: Text;
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        FirstValueEntryNo: Integer;
        PostedReceiptDate: Date;
        NextEntryNo: Integer;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        Text008: Label 'VAT Amount Specification in ';
        Text009: Label 'Local Currency';
        Text010: Label 'Exchange rate: %1/%2';
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        CalculatedExchRate: Decimal;
        Text011: Label 'Sales - Prepmt. Credit Memo %1';
        OutputNo: Integer;
        NNC_TotalLineAmount: Decimal;
        NNC_TotalAmountInclVat: Decimal;
        NNC_TotalInvDiscAmount: Decimal;
        NNC_TotalAmount: Decimal;
        ChargesAmount: Decimal;
        OtherTaxesAmount: Decimal;
        Text13700: Label 'Total %1 Incl. Taxes';
        Text13701: Label 'Total %1 Excl. Taxes';
        SupplementaryText: Text[30];
        Text16500: Label 'Supplementary Credit Memo';
        // ServiceTaxEntry: Record 16473; pcpl-065
        ServiceTaxAmt: Decimal;
        ServiceTaxECessAmt: Decimal;
        NNC_TotalAmountToCustomer: Decimal;
        NNC_TotalExciseAmount: Decimal;
        NNC_TotalTaxAmount: Decimal;
        NNC_TotalServiceTaxAmount: Decimal;
        NNC_TSTaxeCessAmount: Decimal;
        NNC_TSTSHECessAmount: Decimal;
        NNC_TTDSTCSISHECESS: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        PhoneNoCaptionLbl: Label 'Phone No.';
        RegNoCaptionLbl: Label 'VAT Registration No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankNameCaptionLbl: Label 'Bank';
        BankAccNoCaptionLbl: Label 'Account No.';
        CrMemoNoCaptionLbl: Label 'Credit Memo No.';
        PostingDateCaptionLbl: Label 'Posting Date';
        HdrDimCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        DiscPercentCaptionLbl: Label 'Discount %';
        AmountCaptionLbl: Label 'Amount';
        DiscAmtCaptionLbl: Label 'Line Discount Amount';
        PostedReceiptDateCaptionLbl: Label 'Posted Return Receipt Date';
        InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
        SubTotalCaptionLbl: Label 'Subtotal';
        ExciseAmtCaptionLbl: Label 'Excise Amount';
        TaxAmtCaptionLbl: Label 'Tax Amount';
        ServTaxAmtCaptionLbl: Label 'Service Tax Amount';
        ChargesAmtCaptionLbl: Label 'Charges Amount';
        OtherTaxesAmtCaptionLbl: Label 'Other Taxes Amount';
        ServiceTaxeCessAmtCaptionLbl: Label 'Service Tax eCess Amount';
        TotalTDSIncludingeCessCaptionLbl: Label 'Total TDS Including eCess';
        TCSAmountCaptionLbl: Label 'TCS Amount';
        ServiceTaxSHECessAmtCaptionLbl: Label 'Service Tax SHE Cess Amount';
        PaymentDiscOnVATCaptionLbl: Label 'Payment Discount on VAT';
        LineDimCaptionLbl: Label 'Line Dimensions';
        VATPercentCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmtCaptionLbl: Label 'VAT Amount';
        VATAmtSpecCaptionLbl: Label 'VAT Amount Specification';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        InvDiscBaseAmtCaptionLbl: Label 'Invoice Discount Base Amount';
        LineAmtCaptionLbl: Label 'Line Amount';
        InvDiscAmt1CaptionLbl: Label 'Invoice Discount Amount';
        TotalCaptionLbl: Label 'Total';
        ShiptoAddrCaptionLbl: Label 'Ship-to Address';
        HomePageCaptionLbl: Label 'Home Page';
        EmailCaptionLbl: Label 'E-Mail';
        DocumentDateCaptionLbl: Label 'Document Date';
        NNC_TotalServiceTaxSBCAmount: Decimal;
        ServTaxSBCAmtCaptionLbl: Label 'SBC Amount';
        SGSTPer: Decimal;
        SGSTAmount: Decimal;
        CGSTAmount: Decimal;
        IGSTAmount: Decimal;
        IGSTPer: Decimal;
        CGSTPer: Decimal;
        GLE: Record "Detailed GST Ledger Entry";  //16419; //pcpl-065
        RecCustomer: Record 18;
        RegistrationNo: Code[15];
        SCML_No: Code[20];//pcpl-065


    // [Scope('Internal')]
    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(6) <> '';
    end;

    // [Scope('Internal')]
    procedure FindPostedShipmentDate(): Date
    var
        ReturnReceiptHeader: Record "Return Receipt Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;

        // IF "Sales Cr.Memo Line"."Return Receipt No." <> '' THEN
        //     IF ReturnReceiptHeader.GET("Sales Cr.Memo Line"."Return Receipt No.") THEN // pcpl-065
        EXIT(ReturnReceiptHeader."Posting Date");
        IF "Sales Cr.Memo Header"."Return Order No." = '' THEN
            EXIT("Sales Cr.Memo Header"."Posting Date");
        /*
        CASE "Sales Cr.Memo Line".Type OF
            "Sales Cr.Memo Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Cr.Memo Line");
            "Sales Cr.Memo Line".Type::"G/L Account", "Sales Cr.Memo Line".Type::Resource,
          "Sales Cr.Memo Line".Type::"Charge (Item)", "Sales Cr.Memo Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Cr.Memo Line");
            "Sales Cr.Memo Line".Type::" ": 
            */

        //EXIT(0D);
    END;
    //pcpl-065
    /* SalesShipmentBuffer.RESET;

                SalesShipmentBuffer.SETRANGE("Document No.", "Sales Cr.Memo Line"."Document No.");
                SalesShipmentBuffer.SETRANGE("Line No.", "Sales Cr.Memo Line"."Line No.");

        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT(SalesShipmentBuffer2."Posting Date");
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            // IF SalesShipmentBuffer.Quantity <> "Sales Cr.Memo Line".Quantity THEN BEGIN //pcpl-065
            SalesShipmentBuffer.DELETEALL;
            EXIT("Sales Cr.Memo Header"."Posting Date");
            // END; //pcpl-065
        END ELSE
            EXIT("Sales Cr.Memo Header"."Posting Date"); */
    //end; ///pcpl-065

    // [Scope('Internal')]
    procedure GenerateBufferFromValueEntry(SalesCrMemoLine2: Record 115)
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesCrMemoLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesCrMemoLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Cr.Memo Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesCrMemoLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesCrMemoLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesCrMemoLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity - ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    // [Scope('Internal')] //PCP-065
    procedure GenerateBufferFromShipment(SalesCrMemoLine: Record 115)
    var
        SalesCrMemoHeader: Record 114;
        SalesCrMemoLine2: Record 115;
        ReturnReceiptHeader: Record 6660;
        ReturnReceiptLine: Record 6661;
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesCrMemoHeader.SETCURRENTKEY("Return Order No.");
        SalesCrMemoHeader.SETFILTER("No.", '..%1', "Sales Cr.Memo Header"."No.");
        SalesCrMemoHeader.SETRANGE("Return Order No.", "Sales Cr.Memo Header"."Return Order No.");
        IF SalesCrMemoHeader.FIND('-') THEN
            REPEAT
                SalesCrMemoLine2.SETRANGE("Document No.", SalesCrMemoHeader."No.");
                SalesCrMemoLine2.SETRANGE("Line No.", SalesCrMemoLine."Line No.");
                SalesCrMemoLine2.SETRANGE(Type, SalesCrMemoLine.Type);
                SalesCrMemoLine2.SETRANGE("No.", SalesCrMemoLine."No.");
                SalesCrMemoLine2.SETRANGE("Unit of Measure Code", SalesCrMemoLine."Unit of Measure Code");
                IF SalesCrMemoLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesCrMemoLine2.Quantity;
                    UNTIL SalesCrMemoLine2.NEXT = 0;
            UNTIL SalesCrMemoHeader.NEXT = 0;

        ReturnReceiptLine.SETCURRENTKEY("Return Order No.", "Return Order Line No.");
        ReturnReceiptLine.SETRANGE("Return Order No.", "Sales Cr.Memo Header"."Return Order No.");
        ReturnReceiptLine.SETRANGE("Return Order Line No.", SalesCrMemoLine."Line No.");
        ReturnReceiptLine.SETRANGE("Line No.", SalesCrMemoLine."Line No.");
        ReturnReceiptLine.SETRANGE(Type, SalesCrMemoLine.Type);
        ReturnReceiptLine.SETRANGE("No.", SalesCrMemoLine."No.");
        ReturnReceiptLine.SETRANGE("Unit of Measure Code", SalesCrMemoLine."Unit of Measure Code");
        ReturnReceiptLine.SETFILTER(Quantity, '<>%1', 0);

        IF ReturnReceiptLine.FIND('-') THEN
            REPEAT
                IF "Sales Cr.Memo Header"."Get Return Receipt Used" THEN
                    CorrectShipment(ReturnReceiptLine);
                IF ABS(ReturnReceiptLine.Quantity) <= ABS(TotalQuantity - SalesCrMemoLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - ReturnReceiptLine.Quantity
                ELSE BEGIN
                    IF ABS(ReturnReceiptLine.Quantity) > ABS(TotalQuantity) THEN
                        ReturnReceiptLine.Quantity := TotalQuantity;
                    Quantity :=
                      ReturnReceiptLine.Quantity - (TotalQuantity - SalesCrMemoLine.Quantity);

                    SalesCrMemoLine.Quantity := SalesCrMemoLine.Quantity - Quantity;
                    TotalQuantity := TotalQuantity - ReturnReceiptLine.Quantity;

                    IF ReturnReceiptHeader.GET(ReturnReceiptLine."Document No.") THEN BEGIN
                        AddBufferEntry(
                          SalesCrMemoLine,
                          -Quantity,
                          ReturnReceiptHeader."Posting Date");
                    END;
                END;
            UNTIL (ReturnReceiptLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    // [Scope('Internal')]  //PCPL-065
    procedure CorrectShipment(var ReturnReceiptLine: Record 6661)
    var
        SalesCrMemoLine: Record 115;
    begin
        SalesCrMemoLine.SETCURRENTKEY("Return Receipt No.", "Return Receipt Line No.");
        SalesCrMemoLine.SETRANGE("Return Receipt No.", ReturnReceiptLine."Document No.");
        SalesCrMemoLine.SETRANGE("Return Receipt Line No.", ReturnReceiptLine."Line No.");
        IF SalesCrMemoLine.FIND('-') THEN
            REPEAT
                ReturnReceiptLine.Quantity := ReturnReceiptLine.Quantity - SalesCrMemoLine.Quantity;
            UNTIL SalesCrMemoLine.NEXT = 0;
    end;

    // [Scope('Internal')] //PCPL-065
    procedure AddBufferEntry(SalesCrMemoLine: Record 115; QtyOnShipment: Decimal; PostingDate: Date)
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesCrMemoLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesCrMemoLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity - QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        WITH SalesShipmentBuffer DO BEGIN
            INIT;
            "Document No." := SalesCrMemoLine."Document No.";
            "Line No." := SalesCrMemoLine."Line No.";
            "Entry No." := NextEntryNo;
            Type := SalesCrMemoLine.Type;
            "No." := SalesCrMemoLine."No.";
            Quantity := -QtyOnShipment;
            "Posting Date" := PostingDate;
            INSERT;
            NextEntryNo := NextEntryNo + 1
        END;
    end;

    local procedure DocumentCaption(): Text[250]
    begin
        IF "Sales Cr.Memo Header"."Prepayment Credit Memo" THEN
            EXIT(Text011);
        EXIT(Text005);
    end;

    // [Scope('Internal')] //PCPL-065
    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
    end;
}

