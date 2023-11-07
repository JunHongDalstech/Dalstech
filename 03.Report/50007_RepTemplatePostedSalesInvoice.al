report 50007 "Template Posted Sales Invoice"
{
    // version DALS

    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '03.Report/50007_RepTemplatePostedSalesInvoice.rdl';
    DefaultLayout = RDLC;
    Caption = 'Posted Sales Invoice';
    Permissions = TableData 7190 = rimd;
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Posted Sales Invoice';
            column(TCYCode; SGLocalizationSetup."DALS TCY Code")
            {
            }
            column(ShowLineDisc; ShowLineDisc)
            {
            }
            column(NoSalesHeader; "No.")
            {
            }
            column(CustomerRegistrationNo; CustomerCard."DALS Customer Registration No.")
            {
            }
            column(OutputNo; OutputNo)
            {
            }
            column(PrintType; PrintType)
            {
            }
            column(GSTPercentage; GetGSTPercentage)
            {
            }
            column(ShowGSTInformation; ShowGSTInformation)
            {
            }
            column(BankCode; BankCode)
            {
            }
            column(WorkDescription; "Sales Invoice Header".GetWorkDescription())
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(ShowLogo; ShowLogo)
                    {
                    }
                    column(CompInfoPicture; CompanyInfo.Picture)
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
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
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompInfoName; CompanyInfo.Name)
                    {
                    }
                    column(CompInfoName2; CompanyInfo."Name 2")
                    {
                    }
                    column(CompInfoAddress; CompanyInfo.Address)
                    {
                    }
                    column(CompInfoAddress2; CompanyInfo."Address 2")
                    {
                    }
                    column(CompInfoCounty; CompanyInfo.County)
                    {
                    }
                    column(CompInfoFaxNo; CompanyInfo."Fax No.")
                    {
                    }
                    column(CompInfoPhoneNo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CompInfoPostCode; CompanyInfo."Post Code")
                    {
                    }
                    column(CompInfoCountryRegionCode; CompanyInfo."Country/Region Code")
                    {
                    }
                    column(CompInfoVATRegsNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompInfoRegsNo; CompanyInfo."Registration No.")
                    {
                    }
                    column(CompInfoCountryName; CompCountryName)
                    {
                    }
                    column(DocumentDate; "Sales Invoice Header"."Document Date")
                    {
                    }
                    column(ShipmentDate; "Sales Invoice Header"."Shipment Date")
                    {
                    }
                    column(PostingDate; "Sales Invoice Header"."Posting Date")
                    {
                    }
                    column(DueDate; "Sales Invoice Header"."Due Date")
                    {
                    }
                    column(OrderDate; "Sales Invoice Header"."Order Date")
                    {
                    }
                    column(VATRegistrationNo; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(YourReference; "Sales Invoice Header"."Your Reference")
                    {
                    }
                    column(PricesIncVAT; "Sales Invoice Header"."Prices Including VAT")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPersonName)
                    {
                    }
                    column(PricesInclVAT; FORMAT("Sales Invoice Header"."Prices Including VAT"))
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethodDescription)
                    {
                    }
                    column(PaymentTermsDescription; PaymentTermsDescription)
                    {
                    }
                    column(OrganizationalLevelCode; OrganizationalLevelCode)
                    {
                    }
                    column(VirtualAccountNo; VirtualAccountNo)
                    {
                    }
                    column(VATRegsNo; "Sales Invoice Header"."VAT Registration No.")
                    {
                    }
                    column(CurrCode; CurrCode)
                    {
                    }
                    column(SellToCustomerNo; "Sales Invoice Header"."Sell-to Customer No.")
                    {
                    }
                    column(BilltoCustNo; "Sales Invoice Header"."Bill-to Customer No.")
                    {
                    }
                    column(BillToName; "Sales Invoice Header"."Bill-to Name")
                    {
                    }
                    column(BillToName2; "Sales Invoice Header"."Bill-to Name 2")
                    {
                    }
                    column(BillToAddress; "Sales Invoice Header"."Bill-to Address")
                    {
                    }
                    column(BillToAddress2; "Sales Invoice Header"."Bill-to Address 2")
                    {
                    }
                    column(BillToPostCode; "Sales Invoice Header"."Bill-to Post Code")
                    {
                    }
                    column(BillToCounty; "Sales Invoice Header"."Bill-to County")
                    {
                    }
                    column(BillToContact; "Sales Invoice Header"."Bill-to Contact")
                    {
                    }
                    column(BillToCountry; BillToCountry)
                    {
                    }
                    column(BillToCustPhoneNo; BillToCustPhoneNo)
                    {
                    }
                    column(BillToCustFaxNo; BillToCustFaxNo)
                    {
                    }
                    column(BillToCustRegNo; BillToCustRegNo)
                    {
                    }
                    column(VATIdentifier; GetGSTPercentage)
                    {
                    }
                    column(ShipToCode; "Sales Invoice Header"."Ship-to Code")
                    {
                    }
                    column(ShipToName; ShipToName)
                    {
                    }
                    column(ShipToName2; ShipToName2)
                    {
                    }
                    column(ShipToAddress; ShipToAddress)
                    {
                    }
                    column(ShipToAddress2; ShipToAddress2)
                    {
                    }
                    column(ShipToPostCode; ShipToPostCode)
                    {
                    }
                    column(ShipToCounty; ShipToCounty)
                    {
                    }
                    column(ShipToContact; ShipToContact)
                    {
                    }
                    column(ShipToCountry; ShipToCountry)
                    {
                    }
                    column(ShipToPhoneNo; ShipToPhoneNo)
                    {
                    }
                    column(ShipToFaxNo; ShipToFaxNo)
                    {
                    }
                    column(DimensionCode1; "Sales Invoice Header"."Shortcut Dimension 1 Code")
                    {
                    }
                    column(DimensionCode2; "Sales Invoice Header"."Shortcut Dimension 2 Code")
                    {
                    }
                    column(ExtDocNo; "Sales Invoice Header"."External Document No.")
                    {
                    }
                    column(OrderNo; "Sales Invoice Header"."Order No.")
                    {
                    }
                    column(DONo; GetDONo("Sales Invoice Header"."Order No."))
                    {
                    }
                    column(VATBaseDisc; "Sales Invoice Header"."VAT Base Discount %")
                    {
                    }
                    column(ExchangeRateTCY; "Sales Invoice Header"."DALS Exchange Rate (TCY)")
                    {
                    }
                    column(GstDifferenceTCY; "Sales Invoice Header"."DALS GST Difference (TCY)")
                    {
                    }
                    column(BankText01; BankText01)
                    {
                    }
                    column(BankValue01; BankValue01)
                    {
                    }
                    column(BankText02; BankText02)
                    {
                    }
                    column(BankValue02; BankValue02)
                    {
                    }

                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number1_IntergerLine; DimensionLoop1.Number)
                        {
                        }

                        trigger OnAfterGetRecord();
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

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Invoice Line"; "Sales Invoice Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Invoice Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Sequence; Sequence)
                        {
                        }
                        column(LineAmt_Line; "Line Amount")
                        {
                            // AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(Desc_Line; Description)
                        {
                        }
                        column(No_Line; "No.")
                        {
                        }
                        column(ItemNo; ItemNo)
                        {
                        }
                        Column(VATProdPostingGroup; "VAT Prod. Posting Group")
                        {
                        }
                        column(Qty_Line; Quantity)
                        {
                        }
                        column(UnitofMeasureCode_Line; "Unit of Measure Code")
                        {
                        }
                        column(UnitPrice_Line; "Unit Price")
                        {
                            //AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 2;
                        }
                        column(LineDiscountAmount_Line; "Line Discount Amount")
                        {
                        }
                        column(LineDiscountPercentage_Line; "Line Discount %")
                        {
                        }

                        column(Type_Line; Type)
                        {
                        }
                        column(InvDiscountAmount_Line; "Inv. Discount Amount")
                        {
                        }
                        column(Amount; Amount)
                        {
                        }
                        column(BillingPeriod; BillingPeriod)
                        {
                        }
                        column(AmountIncludingVAT; "Amount Including VAT")
                        {
                        }
                        column(Base_TCY; Amount * "Sales Invoice Header"."DALS Exchange Rate (TCY)")
                        {
                        }
                        column(Amount_TCY; (("Amount Including VAT" - Amount - "VAT Difference") * "Sales Invoice Header"."DALS Exchange Rate (TCY)"))
                        {
                        }
                        column(AmountInclVAT_TCY; ("Amount Including VAT" - "VAT Difference") * "Sales Invoice Header"."DALS Exchange Rate (TCY)")
                        {
                        }
                        column(AmtLangB1AmtLangB2; AmountLangB[1] + ' ' + AmountLangB[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtLangA1AmtLangA2; AmountLangA[1] + ' ' + AmountLangA[2])
                        {
                            AutoFormatType = 1;
                        }
                        column(AmtInWords; AmountInWords)
                        {
                        }
                        column(LineNo_Line; "Line No.")
                        {
                        }
                        column(AmountInWords; DescriptionLine[1] + ' ' + DescriptionLine[2])
                        {
                        }
                        column(vType; vType)
                        {
                        }

                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimTextCtrl82; DimText)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET THEN
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

                            trigger OnPreDataItem();
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK;

                                DimSetEntry2.SETRANGE(DimSetEntry2."Dimension Set ID", "Sales Invoice Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            column(PostedAsmMeasureCode; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                //DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineQty; TempPostedAsmLine.Quantity)
                            {
                                //DecimalPlaces = 0 : 5;
                            }
                            column(PostedAsmLineVarCode; BlanksForIndent + TempPostedAsmLine."Variant Code")
                            {
                                //DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent + TempPostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineNo; BlanksForIndent + TempPostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET
                                ELSE
                                    TempPostedAsmLine.NEXT;

                                IF ItemTranslation.GET(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Sales Invoice Header"."Language Code")
                                THEN
                                    TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                CollectAsmInformation;
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            PostedShipmentDate := 0D;
                            IF Quantity <> 0 THEN
                                PostedShipmentDate := FindPostedShipmentDate;

                            //IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                            //  "No." := '';

                            VATAmountLine.INIT;
                            VATAmountLine."VAT Identifier" := "VAT Identifier";
                            VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                            VATAmountLine."Tax Group Code" := "Tax Group Code";
                            VATAmountLine."VAT %" := "VAT %";
                            VATAmountLine."VAT Base" := Amount;
                            VATAmountLine."VAT Amount" := "Amount Including VAT" - Amount;
                            VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                            VATAmountLine."Line Amount" := "Line Amount";
                            IF "Allow Invoice Disc." THEN
                                VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                            VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                            VATAmountLine.InsertLine;

                            TotalSubTotal += "Line Amount";
                            TotalInvoiceDiscountAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscountOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                            IF (Type.AsInteger() <> 0) AND (Quantity <> 0) THEN
                                Sequence := Sequence + 1
                            ELSE
                                Sequence := Sequence;

                            IF (Type.AsInteger() <> 0) AND (Quantity = 0) THEN
                                ShowLine := FALSE
                            ELSE
                                ShowLine := TRUE;

                            IF Type.AsInteger() <> 0 THEN
                                TempShowLine := ShowLine
                            ELSE BEGIN
                                IF "No." = '' THEN
                                    TempShowLine := TempShowLine
                                ELSE
                                    TempShowLine := TRUE;
                            END;

                            IF TempShowLine = FALSE THEN
                                CurrReport.SKIP;
                            vType := '1';
                            IF Type.AsInteger() = 0 THEN
                                vType := '0';

                            //DALS:SG START #LW001B
                            if ShowLineDisc = false then begin
                                if "Line Discount Amount" <> 0 then
                                    showlinedisc := true;
                            end;
                            //DALS:SG END #LW001B
                            "Sales Invoice Header".CALCFIELDS("Sales Invoice Header".Amount);
                            "Sales Invoice Header".CALCFIELDS("Sales Invoice Header"."Amount Including VAT");
                            InitTextVariable;
                            FormatNoText(DescriptionLine, ABS(TotalAmountInclVAT), CurrCode);
                        end;

                        trigger OnPreDataItem();
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
                            //CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATBase_VATAmtLine; VATAmountLine."VAT Base")
                        {
                            //AutoFormatExpression = "Sales Invoice Line".GetCurrencyCode;
                            AutoFormatType = 1;
                        }
                        column(VATAmt_VATAmtLine; VATAmountLine."VAT Amount")
                        {
                            //AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmt_VATAmtLine; VATAmountLine."Line Amount")
                        {
                            //AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscBaseAmt_VATAmtLine; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            //AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmt_VATAmtLine; VATAmountLine."Invoice Discount Amount")
                        {
                            //AutoFormatExpression = "Sales Invoice Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VAT_VATAmtLine; VATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifier_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem();
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);

                            //CurrReport.CREATETOTALS(
                            //  VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                            //  VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");                            
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHdr; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmtLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATCtrl164_VATAmtLine; VATAmountLine."VAT %")
                        {
                            //DecimalPlaces = 0 : 5;
                        }
                        column(VATIndCtrl_VATAmtLine; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code",
                                "Sales Invoice Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem();
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Sales Invoice Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK;

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            //CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text007 + Text008
                            ELSE
                                VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Invoice Header"."Posting Date", "Sales Invoice Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Sales Invoice Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text009, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
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
                        column(SelltoCustomerNo_SalesInvHeader; "Sales Invoice Header"."Sell-to Customer No.")
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowShippingAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvoiceDiscountAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscountOnVAT := 0;
                    TempShowLine := TRUE;
                    Sequence := 0;
                end;

                trigger OnPostDataItem();
                begin
                    //IF NOT CurrReport.PREVIEW THEN
                    SalesInvCountPrinted.RUN("Sales Invoice Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + Cust."Invoice Copies" + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                //CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");
                GSTPercentage := 0;
                ShowLineDisc := False; //DALS:SG #LW001A
                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END;

                FOR i := 1 TO ARRAYLEN(ShipToAddr) DO
                    IF ShipToAddr[i] <> CustAddr[i] THEN
                        ShowShippingAddr := TRUE;

                CALCFIELDS(Amount);
                CALCFIELDS("Amount Including VAT");

                AmountLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", Amount, "Currency Factor"));
                AmountIncLCY :=
                  ROUND(
                    CurrExchRate.ExchangeAmtFCYToLCY(
                      WORKDATE, "Currency Code", "Amount Including VAT", "Currency Factor"));

                GetLineFeeNoteOnReportHist("No.");

                IF LogInteraction THEN
                    //IF NOT CurrReport.PREVIEW THEN BEGIN
                    IF "Bill-to Contact No." <> '' THEN
                        SegManagement.LogDocument(
                          4, "No.", 0, 0, DATABASE::Contact, "Bill-to Contact No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '')
                    ELSE
                        SegManagement.LogDocument(
                          4, "No.", 0, 0, DATABASE::Customer, "Bill-to Customer No.", "Salesperson Code",
                          "Campaign No.", "Posting Description", '');
                //END;

                Sequence := 0;

                IF "Currency Code" = '' THEN
                    CurrCode := GLSetup."LCY Code"
                ELSE
                    CurrCode := "Currency Code";

                IF CurrCode = GLSetup."LCY Code" THEN
                    ShowGSTInformation := FALSE
                ELSE
                    ShowGSTInformation := TRUE;

                //Billing
                IF TableCountryRegion.GET("Bill-to Country/Region Code") THEN
                    BillToCountry := TableCountryRegion.Name
                ELSE
                    BillToCountry := '';

                IF TableCust.GET("Bill-to Customer No.") THEN BEGIN
                    BillToCustPhoneNo := TableCust."Phone No.";
                    BillToCustFaxNo := TableCust."Fax No.";
                    BillToCustRegNo := TableCust."DALS Customer Registration No."
                END
                ELSE BEGIN
                    BillToCustPhoneNo := '';
                    BillToCustFaxNo := '';
                    BillToCustRegNo := '';
                END;

                //Shipping
                ShipToName := "Ship-to Name";
                ShipToName2 := "Ship-to Name 2";
                ShipToAddress := "Ship-to Address";
                ShipToAddress2 := "Ship-to Address 2";
                ShipToPostCode := "Ship-to Post Code";
                ShipToCounty := "Ship-to County";
                ShipToContact := "Ship-to Contact";
                IF TableCountryRegion.GET("Ship-to Country/Region Code") THEN
                    ShipToCountry := TableCountryRegion.Name
                ELSE
                    ShipToCountry := '';

                IF TableShiptoAddress.GET("Sell-to Customer No.", "Ship-to Code") THEN BEGIN
                    ShipToPhoneNo := TableShiptoAddress."Phone No.";
                    ShipToFaxNo := TableShiptoAddress."Fax No.";
                END
                ELSE BEGIN
                    IF TableCust.GET("Sell-to Customer No.") THEN BEGIN
                        ShipToPhoneNo := TableCust."Phone No.";
                        ShipToFaxNo := TableCust."Fax No.";
                    END
                    ELSE BEGIN
                        ShipToPhoneNo := '';
                        ShipToFaxNo := '';
                    END;
                END;

                //Salesperson
                IF SalesPurchPerson.GET("Salesperson Code") THEN
                    SalesPurchPersonName := SalesPurchPerson.Name
                ELSE
                    SalesPurchPersonName := ' ';

                //Payment Terms
                IF PaymentTerms.GET("Payment Terms Code") THEN
                    PaymentTermsDescription := PaymentTerms.Description
                ELSE
                    PaymentTermsDescription := ' ';

                //Organizational Level Code
                IF Contact.GET("Bill-to Contact No.") THEN begin
                    OrganizationalLevel.Reset();
                    Organizationallevel.SetRange(Organizationallevel."Code", Contact."Organizational Level Code");
                    If Organizationallevel.FindSet() then
                        OrganizationalLevelCode := Organizationallevel.Description
                end
                ELSE
                    OrganizationalLevelCode := '';

                //Shipment Method
                IF ShipmentMethod.GET("Shipment Method Code") THEN
                    ShipmentMethodDescription := ShipmentMethod.Description
                ELSE
                    ShipmentMethodDescription := ' ';


                //Bank Code
                BankText01 := GeneralCodeUnit.GetBankDetails(BankCode, false);
                BankValue01 := GeneralCodeUnit.GetBankDetails(BankCode, true);
            end;

            trigger OnPreDataItem();
            begin
                IF BankAccount.GET(BankCode) THEN;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(PrintType; PrintType)
                    {
                        Caption = 'Print Type';
                        ApplicationArea = All;

                    }
                    field("Bank Code"; BankCode)
                    {
                        TableRelation = "Bank Account";
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit();
        begin
            LogInteractionEnable := TRUE;
        end;

        trigger OnOpenPage();
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
            PrintType := 0;
            SGLocalizationSetup.GET;
            BankCode := SGLocalizationSetup."DALS Default Bank Code";
            ShowLogo := true;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
        SGLocalizationSetup.GET;

        CompanyInfo.VerifyAndSetPaymentInfo;
        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);

        IF TableCountryRegion.GET(CompanyInfo."Country/Region Code") THEN
            CompCountryName := TableCountryRegion.Name
        ELSE
            CompCountryName := '';
    end;

    trigger OnPreReport();
    begin
        IF NOT CurrReport.USEREQUESTPAGE THEN
            InitLogInteraction;
    end;

    var
        //        IsHandled: Boolean; // Needed for the event handler below, but not used in this report (yet)
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. GST';
        Text003: Label 'COPY';
        Text004: Label 'Sales - Invoice %1';
        PageCaptionCap: Label 'Page %1 of %2';
        Text006: Label 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        Contact: Record "Contact";
        Customer: Record "Customer";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record "Customer";
        VATAmountLine: Record "VAT Amount Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";

        CurrExchRate: Record "Currency Exchange Rate";
        TempPostedAsmLine: Record "Posted Assembly Line" temporary;
        TempLineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist." temporary;
        SalesInvCountPrinted: Codeunit "Sales Inv.-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit "SegManagement";
        SalesShipmentBuffer: Record "Sales Shipment Buffer" temporary;
        PostedShipmentDate: Date;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        OrderNoText: Text[80];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        NextEntryNo: Integer;
        FirstValueEntryNo: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: Label 'GST Amount Specification in ';
        Text008: Label 'Local Currency';
        VALExchRate: Text[50];
        Text009: Label 'Exchange rate: %1/%2';
        CalculatedExchRate: Decimal;
        Text010: Label 'Sales - Prepayment Invoice %1';
        OutputNo: Integer;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        TotalPaymentDiscountOnVAT: Decimal;
        TotalInclVATTextLCY: Text[50];
        TotalExclVATTextLCY: Text[50];
        AmountLCY: Decimal;
        AmountIncLCY: Decimal;
        CurrencyLCY: Boolean;
        AmountInWords: Boolean;
        AmountLangA: array[2] of Text[80];
        AmountLangB: array[2] of Text[80];
        ShowTHFormatting: Boolean;
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        DisplayAdditionalFeeNote: Boolean;
        ">>DALS:SG>>": Boolean;

        TotalFor: Label '"Total for "';
        Text026: Label 'ZERO';
        Text027: Label 'HUNDRED';
        Text028: Label 'AND';
        Text029: Label '%1 results in a written number that is too long.';
        Text032: Label 'ONE';
        Text033: Label 'TWO';
        Text034: Label 'THREE';
        Text035: Label 'FOUR';
        Text036: Label 'FIVE';
        Text037: Label 'SIX';
        Text038: Label 'SEVEN';
        Text039: Label 'EIGHT';
        Text040: Label 'NINE';
        Text041: Label 'TEN';
        Text042: Label 'ELEVEN';
        Text043: Label 'TWELVE';
        Text044: Label 'THIRTEEN';
        Text045: Label 'FOURTEEN';
        Text046: Label 'FIFTEEN';
        Text047: Label 'SIXTEEN';
        Text048: Label 'SEVENTEEN';
        Text049: Label 'EIGHTEEN';
        Text050: Label 'NINETEEN';
        Text051: Label 'TWENTY';
        Text052: Label 'THIRTY';
        Text053: Label 'FORTY';
        Text054: Label 'FIFTY';
        Text055: Label 'SIXTY';
        Text056: Label 'SEVENTY';
        Text057: Label 'EIGHTY';
        Text058: Label 'NINETY';
        Text059: Label 'THOUSAND';
        Text060: Label 'MILLION';
        Text061: Label 'BILLION';
        ">>DALS:SG": Integer;
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text[80];
        CentText: Text[30];
        ShowLine: Boolean;
        TempShowLine: Boolean;
        CurrCode: Code[10];
        Sequence: Integer;
        ShowLogo: Boolean;
        BillToCountry: Text[50];
        TableCountryRegion: Record "Country/Region";
        BillToCustPhoneNo: Text[50];
        BillToCustFaxNo: Text[50];
        BillToCustRegNo: Text;
        TableCust: Record "Customer";
        TableContact: Record "Contact";
        CompCountryName: Text[50];
        TempVATAmountLine1: Record "VAT Amount Line" temporary;
        GSTPercentage: Decimal;
        VATPostingSetup: Record "VAT Posting Setup";
        vType: Text;
        TableShiptoAddress: Record "Ship-to Address";
        TableLocation: Record "Location";
        ShipToName: Text;
        ShipToName2: Text;
        ShipToAddress: Text;
        ShipToAddress2: Text;
        ShipToPostCode: Text;
        ShipToCounty: Text;
        ShipToContact: Text;
        ShipToCountry: Text;
        ShipToPhoneNo: Text;
        ShipToFaxNo: Text;
        SalesPurchPersonName: Text;
        PaymentTermsDescription: Text;
        OrganizationalLevelCode: Text;
        VirtualAccountNo: Text;
        ShipmentMethodDescription: Text;
        SGLocalizationSetup: Record DALS_01TabSGLocalizationSetup;
        PrintType: Option "Invoice","Debit Note";
        BankCode: Code[20];
        BankAccount: Record "Bank Account";
        ShowGSTInformation: Boolean;
        ShowLineDisc: Boolean;
        ItemNo: Text;
        CustomerCard: Record Customer;
        UserSetup: Record "User Setup";
        BillingPeriod: Text;
        Organizationallevel: Record "Organizational Level";
        BankText01: Text;
        BankValue01: Text;
        BankText02: Text;
        BankValue02: Text;

        GeneralCodeUnit: Codeunit "General Codeunit";

    procedure InitLogInteraction();
    begin
        // LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    local procedure FindPostedShipmentDate(): Date;
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentBuffer2: Record "Sales Shipment Buffer" temporary;
    begin
        NextEntryNo := 1;
        IF "Sales Invoice Line"."Shipment No." <> '' THEN
            IF SalesShipmentHeader.GET("Sales Invoice Line"."Shipment No.") THEN
                EXIT(SalesShipmentHeader."Posting Date");

        IF "Sales Invoice Header"."Order No." = '' THEN
            EXIT("Sales Invoice Header"."Posting Date");

        CASE "Sales Invoice Line".Type OF
            "Sales Invoice Line".Type::Item:
                GenerateBufferFromValueEntry("Sales Invoice Line");
            "Sales Invoice Line".Type::"G/L Account", "Sales Invoice Line".Type::Resource,
          "Sales Invoice Line".Type::"Charge (Item)", "Sales Invoice Line".Type::"Fixed Asset":
                GenerateBufferFromShipment("Sales Invoice Line");
            "Sales Invoice Line".Type::" ":
                EXIT(0D);
        END;

        SalesShipmentBuffer.RESET;
        SalesShipmentBuffer.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", "Sales Invoice Line"."Line No.");
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer2 := SalesShipmentBuffer;
            IF SalesShipmentBuffer.NEXT = 0 THEN BEGIN
                SalesShipmentBuffer.GET(
                  SalesShipmentBuffer2."Document No.", SalesShipmentBuffer2."Line No.", SalesShipmentBuffer2."Entry No.");
                SalesShipmentBuffer.DELETE;
                EXIT(SalesShipmentBuffer2."Posting Date");
            END;
            SalesShipmentBuffer.CALCSUMS(Quantity);
            IF SalesShipmentBuffer.Quantity <> "Sales Invoice Line".Quantity THEN BEGIN
                SalesShipmentBuffer.DELETEALL;
                EXIT("Sales Invoice Header"."Posting Date");
            END;
        END ELSE
            EXIT("Sales Invoice Header"."Posting Date");
    end;

    local procedure GenerateBufferFromValueEntry(SalesInvoiceLine2: Record "Sales Invoice Line");
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := SalesInvoiceLine2."Quantity (Base)";
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", SalesInvoiceLine2."Document No.");
        ValueEntry.SETRANGE("Posting Date", "Sales Invoice Header"."Posting Date");
        ValueEntry.SETRANGE("Item Charge No.", '');
        ValueEntry.SETFILTER("Entry No.", '%1..', FirstValueEntryNo);
        IF ValueEntry.FIND('-') THEN
            REPEAT
                IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                    IF SalesInvoiceLine2."Qty. per Unit of Measure" <> 0 THEN
                        Quantity := ValueEntry."Invoiced Quantity" / SalesInvoiceLine2."Qty. per Unit of Measure"
                    ELSE
                        Quantity := ValueEntry."Invoiced Quantity";
                    AddBufferEntry(
                      SalesInvoiceLine2,
                      -Quantity,
                      ItemLedgerEntry."Posting Date");
                    TotalQuantity := TotalQuantity + ValueEntry."Invoiced Quantity";
                END;
                FirstValueEntryNo := ValueEntry."Entry No." + 1;
            UNTIL (ValueEntry.NEXT = 0) OR (TotalQuantity = 0);
    end;

    local procedure GenerateBufferFromShipment(SalesInvoiceLine: Record "Sales Invoice Line");
    var
        SalesInvoiceHeader: Record "Sales Invoice Header";
        SalesInvoiceLine2: Record "Sales Invoice Line";
        SalesShipmentHeader: Record "Sales Shipment Header";
        SalesShipmentLine: Record "Sales Shipment Line";
        TotalQuantity: Decimal;
        Quantity: Decimal;
    begin
        TotalQuantity := 0;
        SalesInvoiceHeader.SETCURRENTKEY("Order No.");
        SalesInvoiceHeader.SETFILTER("No.", '..%1', "Sales Invoice Header"."No.");
        SalesInvoiceHeader.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        IF SalesInvoiceHeader.FIND('-') THEN
            REPEAT
                SalesInvoiceLine2.SETRANGE("Document No.", SalesInvoiceHeader."No.");
                SalesInvoiceLine2.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
                SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine.Type);
                SalesInvoiceLine2.SETRANGE("No.", SalesInvoiceLine."No.");
                SalesInvoiceLine2.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
                IF SalesInvoiceLine2.FIND('-') THEN
                    REPEAT
                        TotalQuantity := TotalQuantity + SalesInvoiceLine2.Quantity;
                    UNTIL SalesInvoiceLine2.NEXT = 0;
            UNTIL SalesInvoiceHeader.NEXT = 0;

        SalesShipmentLine.SETCURRENTKEY("Order No.", "Order Line No.");
        SalesShipmentLine.SETRANGE("Order No.", "Sales Invoice Header"."Order No.");
        SalesShipmentLine.SETRANGE("Order Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentLine.SETRANGE(Type, SalesInvoiceLine.Type);
        SalesShipmentLine.SETRANGE("No.", SalesInvoiceLine."No.");
        SalesShipmentLine.SETRANGE("Unit of Measure Code", SalesInvoiceLine."Unit of Measure Code");
        SalesShipmentLine.SETFILTER(Quantity, '<>%1', 0);

        IF SalesShipmentLine.FIND('-') THEN
            REPEAT
                IF "Sales Invoice Header"."Get Shipment Used" THEN
                    CorrectShipment(SalesShipmentLine);
                IF ABS(SalesShipmentLine.Quantity) <= ABS(TotalQuantity - SalesInvoiceLine.Quantity) THEN
                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity
                ELSE BEGIN
                    IF ABS(SalesShipmentLine.Quantity) > ABS(TotalQuantity) THEN
                        SalesShipmentLine.Quantity := TotalQuantity;
                    Quantity :=
                      SalesShipmentLine.Quantity - (TotalQuantity - SalesInvoiceLine.Quantity);

                    TotalQuantity := TotalQuantity - SalesShipmentLine.Quantity;
                    SalesInvoiceLine.Quantity := SalesInvoiceLine.Quantity - Quantity;

                    IF SalesShipmentHeader.GET(SalesShipmentLine."Document No.") THEN BEGIN
                        AddBufferEntry(
                          SalesInvoiceLine,
                          Quantity,
                          SalesShipmentHeader."Posting Date");
                    END;
                END;
            UNTIL (SalesShipmentLine.NEXT = 0) OR (TotalQuantity = 0);
    end;

    local procedure CorrectShipment(var SalesShipmentLine: Record "Sales Shipment Line");
    var
        SalesInvoiceLine: Record "Sales Invoice Line";
    begin
        SalesInvoiceLine.SETCURRENTKEY("Shipment No.", "Shipment Line No.");
        SalesInvoiceLine.SETRANGE("Shipment No.", SalesShipmentLine."Document No.");
        SalesInvoiceLine.SETRANGE("Shipment Line No.", SalesShipmentLine."Line No.");
        IF SalesInvoiceLine.FIND('-') THEN
            REPEAT
                SalesShipmentLine.Quantity := SalesShipmentLine.Quantity - SalesInvoiceLine.Quantity;
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    local procedure AddBufferEntry(SalesInvoiceLine: Record "Sales Invoice Line"; QtyOnShipment: Decimal; PostingDate: Date);
    begin
        SalesShipmentBuffer.SETRANGE("Document No.", SalesInvoiceLine."Document No.");
        SalesShipmentBuffer.SETRANGE("Line No.", SalesInvoiceLine."Line No.");
        SalesShipmentBuffer.SETRANGE("Posting Date", PostingDate);
        IF SalesShipmentBuffer.FIND('-') THEN BEGIN
            SalesShipmentBuffer.Quantity := SalesShipmentBuffer.Quantity + QtyOnShipment;
            SalesShipmentBuffer.MODIFY;
            EXIT;
        END;

        //WITH SalesShipmentBuffer DO BEGIN
        SalesShipmentBuffer."Document No." := SalesInvoiceLine."Document No.";
        SalesShipmentBuffer."Line No." := SalesInvoiceLine."Line No.";
        SalesShipmentBuffer."Entry No." := NextEntryNo;
        SalesShipmentBuffer.Type := SalesInvoiceLine.Type;
        SalesShipmentBuffer."No." := SalesInvoiceLine."No.";
        SalesShipmentBuffer.Quantity := QtyOnShipment;
        SalesShipmentBuffer."Posting Date" := PostingDate;
        SalesShipmentBuffer.INSERT;
        NextEntryNo := NextEntryNo + 1
        //END;
    end;

    local procedure DocumentCaption(): Text[250];
    begin
        IF "Sales Invoice Header"."Prepayment Invoice" THEN
            EXIT(Text010);
        EXIT(Text004);
    end;

    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewAmountInWords: Boolean; NewCurrencyLCY: Boolean; NewShowTHFormatting: Boolean; NewDisplayAsmInfo: Boolean; NewDisplayAdditionalFeeNote: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        AmountInWords := NewAmountInWords;
        CurrencyLCY := NewCurrencyLCY;
        ShowTHFormatting := NewShowTHFormatting;
        DisplayAssemblyInformation := NewDisplayAsmInfo;
        DisplayAdditionalFeeNote := NewDisplayAdditionalFeeNote;
    end;

    local procedure CollectAsmInformation();
    var
        ValueEntry: Record "Value Entry";
        ItemLedgerEntry: Record "Item Ledger Entry";
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        SalesShipmentLine: Record "Sales Shipment Line";
    begin
        TempPostedAsmLine.DELETEALL;
        IF "Sales Invoice Line".Type <> "Sales Invoice Line".Type::Item THEN
            EXIT;
        //WITH ValueEntry DO BEGIN
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", "Sales Invoice Line"."Document No.");
        ValueEntry.SETRANGE("Document Type", ValueEntry."Document Type"::"Sales Invoice");
        ValueEntry.SETRANGE("Document Line No.", "Sales Invoice Line"."Line No.");
        ValueEntry.SETRANGE(Adjustment, FALSE);
        IF NOT ValueEntry.FINDSET THEN
            EXIT;
        //END;
        REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN BEGIN
                IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        IF PostedAsmLine.FINDSET THEN
                            REPEAT
                                TreatAsmLineBuffer(PostedAsmLine);
                            UNTIL PostedAsmLine.NEXT = 0;
                    END;
                END;
            END;
        UNTIL ValueEntry.NEXT = 0;
    end;

    local procedure TreatAsmLineBuffer(PostedAsmLine: Record "Posted Assembly Line");
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY;
        END ELSE BEGIN
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT;
        END;
    end;

    local procedure GetUOMText(UOMCode: Code[10]): Text[10];
    var
        UnitOfMeasure: Record "Unit of Measure";
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    procedure BlanksForIndent(): Text[10];
    begin
        EXIT(PADSTR('', 2, ' '));
    end;

    local procedure GetLineFeeNoteOnReportHist(SalesInvoiceHeaderNo: Code[20]);
    var
        LineFeeNoteOnReportHist: Record "Line Fee Note on Report Hist.";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        Customer: Record "Customer";
    begin
        TempLineFeeNoteOnReportHist.DELETEALL;
        CustLedgerEntry.SETRANGE("Document Type", CustLedgerEntry."Document Type"::Invoice);
        CustLedgerEntry.SETRANGE("Document No.", SalesInvoiceHeaderNo);
        IF NOT CustLedgerEntry.FINDFIRST THEN
            EXIT;

        IF NOT Customer.GET(CustLedgerEntry."Customer No.") THEN
            EXIT;

        LineFeeNoteOnReportHist.SETRANGE("Cust. Ledger Entry No", CustLedgerEntry."Entry No.");
        LineFeeNoteOnReportHist.SETRANGE("Language Code", Customer."Language Code");
        IF LineFeeNoteOnReportHist.FINDSET THEN BEGIN
            REPEAT
                TempLineFeeNoteOnReportHist.INIT;
                TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                TempLineFeeNoteOnReportHist.INSERT;
            UNTIL LineFeeNoteOnReportHist.NEXT = 0;
        END ELSE BEGIN
            // LineFeeNoteOnReportHist.SETRANGE("Language Code", Language.Code);
            IF LineFeeNoteOnReportHist.FINDSET THEN
                REPEAT
                    TempLineFeeNoteOnReportHist.INIT;
                    TempLineFeeNoteOnReportHist.COPY(LineFeeNoteOnReportHist);
                    TempLineFeeNoteOnReportHist.INSERT;
                UNTIL LineFeeNoteOnReportHist.NEXT = 0;
        END;
    end;

    procedure ">>DALS:SG Functions"();
    begin
    end;

    procedure FormatNoText(var NoText: array[2] of Text; No: Decimal; CurrencyCode: Code[10]);
    var
        PrintExponent: Boolean;
        Ones: Integer;
        Tens: Integer;
        Hundreds: Integer;
        Exponent: Integer;
        NoTextIndex: Integer;
    begin
        CLEAR(NoText);
        NoTextIndex := 1;
        IF CurrencyCode <> '' THEN
            NoText[1] := CurrencyCode;
        IF No < 1 THEN
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text026)
        ELSE BEGIN
            FOR Exponent := 4 DOWNTO 1 DO BEGIN
                PrintExponent := FALSE;
                Ones := No DIV POWER(1000, Exponent - 1);
                Hundreds := Ones DIV 100;
                Tens := (Ones MOD 100) DIV 10;
                Ones := Ones MOD 10;
                IF Hundreds > 0 THEN BEGIN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Hundreds]);
                    AddToNoText(NoText, NoTextIndex, PrintExponent, Text027);
                END;
                IF Tens >= 2 THEN BEGIN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, TensText[Tens]);
                    IF Ones > 0 THEN
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Ones]);
                END ELSE
                    IF (Tens * 10 + Ones) > 0 THEN
                        AddToNoText(NoText, NoTextIndex, PrintExponent, OnesText[Tens * 10 + Ones]);
                IF PrintExponent AND (Exponent > 1) THEN
                    AddToNoText(NoText, NoTextIndex, PrintExponent, ExponentText[Exponent]);
                No := No - (Hundreds * 100 + Tens * 10 + Ones) * POWER(1000, Exponent - 1);

                IF (No * 100) = 0 THEN CentText := '';
                IF (No * 100) = 1 THEN CentText := 'ONE CENT ';
                IF (No * 100) = 2 THEN CentText := 'TWO CENTS ';
                IF (No * 100) = 3 THEN CentText := 'THREE CENTS ';
                IF (No * 100) = 4 THEN CentText := 'FOUR CENTS ';
                IF (No * 100) = 5 THEN CentText := 'FIVE CENTS ';
                IF (No * 100) = 6 THEN CentText := 'SIX CENTS ';
                IF (No * 100) = 7 THEN CentText := 'SEVEN CENTS ';
                IF (No * 100) = 8 THEN CentText := 'EIGHT CENTS ';
                IF (No * 100) = 9 THEN CentText := 'NINE CENTS ';

                IF (No * 100) = 10 THEN CentText := 'TEN CENTS ';
                IF (No * 100) = 11 THEN CentText := 'ELEVEN CENTS ';
                IF (No * 100) = 12 THEN CentText := 'TWELVE CENTS ';
                IF (No * 100) = 13 THEN CentText := 'THIRTEEN CENTS ';
                IF (No * 100) = 14 THEN CentText := 'FOURTEEN CENTS ';
                IF (No * 100) = 15 THEN CentText := 'FIFTEEN CENTS ';
                IF (No * 100) = 16 THEN CentText := 'SIXTEEN CENTS ';
                IF (No * 100) = 17 THEN CentText := 'SEVENTEEN CENTS ';
                IF (No * 100) = 18 THEN CentText := 'EIGHTTEEN CENTS ';
                IF (No * 100) = 19 THEN CentText := 'NINETEEN CENTS ';

                IF (No * 100) = 20 THEN CentText := 'TWENTY CENTS ';
                IF (No * 100) = 21 THEN CentText := 'TWENTY ONE CENTS ';
                IF (No * 100) = 22 THEN CentText := 'TWENTY TWO CENTS ';
                IF (No * 100) = 23 THEN CentText := 'TWENTY THREE CENTS ';
                IF (No * 100) = 24 THEN CentText := 'TWENTY FOUR CENTS ';
                IF (No * 100) = 25 THEN CentText := 'TWENTY FIVE CENTS ';
                IF (No * 100) = 26 THEN CentText := 'TWENTY SIX CENTS ';
                IF (No * 100) = 27 THEN CentText := 'TWENTY SEVEN CENTS ';
                IF (No * 100) = 28 THEN CentText := 'TWENTY EIGHT CENTS ';
                IF (No * 100) = 29 THEN CentText := 'TWENTY NINE CENTS ';

                IF (No * 100) = 30 THEN CentText := 'THIRTY CENTS ';
                IF (No * 100) = 31 THEN CentText := 'THIRTY ONE CENTS ';
                IF (No * 100) = 32 THEN CentText := 'THIRTY TWO CENTS ';
                IF (No * 100) = 33 THEN CentText := 'THIRTY THREE CENTS ';
                IF (No * 100) = 34 THEN CentText := 'THIRTY FOUR CENTS ';
                IF (No * 100) = 35 THEN CentText := 'THIRTY FIVE CENTS ';
                IF (No * 100) = 36 THEN CentText := 'THIRTY SIX CENTS ';
                IF (No * 100) = 37 THEN CentText := 'THIRTY SEVEN CENTS ';
                IF (No * 100) = 38 THEN CentText := 'THIRTY EIGHT CENTS ';
                IF (No * 100) = 39 THEN CentText := 'THIRTY NINE CENTS ';

                IF (No * 100) = 40 THEN CentText := 'FORTY CENTS ';
                IF (No * 100) = 41 THEN CentText := 'FORTY ONE CENTS ';
                IF (No * 100) = 42 THEN CentText := 'FORTY TWO CENTS ';
                IF (No * 100) = 43 THEN CentText := 'FORTY THREE CENTS ';
                IF (No * 100) = 44 THEN CentText := 'FORTY FOUR CENTS ';
                IF (No * 100) = 45 THEN CentText := 'FORTY FIVE CENTS ';
                IF (No * 100) = 46 THEN CentText := 'FORTY SIX CENTS ';
                IF (No * 100) = 47 THEN CentText := 'FORTY SEVEN CENTS ';
                IF (No * 100) = 48 THEN CentText := 'FORTY EIGHT CENTS ';
                IF (No * 100) = 49 THEN CentText := 'FORTY NINE CENTS ';

                IF (No * 100) = 50 THEN CentText := 'FIFTY CENTS ';
                IF (No * 100) = 51 THEN CentText := 'FIFTY ONE CENTS ';
                IF (No * 100) = 52 THEN CentText := 'FIFTY TWO CENTS ';
                IF (No * 100) = 53 THEN CentText := 'FIFTY THREE CENTS ';
                IF (No * 100) = 54 THEN CentText := 'FIFTY FOUR CENTS ';
                IF (No * 100) = 55 THEN CentText := 'FIFTY FIVE CENTS ';
                IF (No * 100) = 56 THEN CentText := 'FIFTY SIX CENTS ';
                IF (No * 100) = 57 THEN CentText := 'FIFTY SEVEN CENTS ';
                IF (No * 100) = 58 THEN CentText := 'FIFTY EIGHT CENTS ';
                IF (No * 100) = 59 THEN CentText := 'FIFTY NINE CENTS ';

                IF (No * 100) = 60 THEN CentText := 'SIXTY CENTS ';
                IF (No * 100) = 61 THEN CentText := 'SIXTY ONE CENTS ';
                IF (No * 100) = 62 THEN CentText := 'SIXTY TWO CENTS ';
                IF (No * 100) = 63 THEN CentText := 'SIXTY THREE CENTS ';
                IF (No * 100) = 64 THEN CentText := 'SIXTY FOUR CENTS ';
                IF (No * 100) = 65 THEN CentText := 'SIXTY FIVE CENTS ';
                IF (No * 100) = 66 THEN CentText := 'SIXTY SIX CENTS ';
                IF (No * 100) = 67 THEN CentText := 'SIXTY SEVEN CENTS ';
                IF (No * 100) = 68 THEN CentText := 'SIXTY EIGHT CENTS ';
                IF (No * 100) = 69 THEN CentText := 'SIXTY NINE CENTS ';

                IF (No * 100) = 70 THEN CentText := 'SEVENTY CENTS ';
                IF (No * 100) = 71 THEN CentText := 'SEVENTY ONE CENTS ';
                IF (No * 100) = 72 THEN CentText := 'SEVENTY TWO CENTS ';
                IF (No * 100) = 73 THEN CentText := 'SEVENTY THREE CENTS ';
                IF (No * 100) = 74 THEN CentText := 'SEVENTY FOUR CENTS ';
                IF (No * 100) = 75 THEN CentText := 'SEVENTY FIVE CENTS ';
                IF (No * 100) = 76 THEN CentText := 'SEVENTY SIX CENTS ';
                IF (No * 100) = 77 THEN CentText := 'SEVENTY SEVEN CENTS ';
                IF (No * 100) = 78 THEN CentText := 'SEVENTY EIGHT CENTS ';
                IF (No * 100) = 79 THEN CentText := 'SEVENTY NINE CENTS ';

                IF (No * 100) = 80 THEN CentText := 'EIGHTY CENTS ';
                IF (No * 100) = 81 THEN CentText := 'EIGHTY ONE CENTS ';
                IF (No * 100) = 82 THEN CentText := 'EIGHTY TWO CENTS ';
                IF (No * 100) = 83 THEN CentText := 'EIGHTY THREE CENTS ';
                IF (No * 100) = 84 THEN CentText := 'EIGHTY FOUR CENTS ';
                IF (No * 100) = 85 THEN CentText := 'EIGHTY FIVE CENTS ';
                IF (No * 100) = 86 THEN CentText := 'EIGHTY SIX CENTS ';
                IF (No * 100) = 87 THEN CentText := 'EIGHTY SEVEN CENTS ';
                IF (No * 100) = 88 THEN CentText := 'EIGHTY EIGHT CENTS ';
                IF (No * 100) = 89 THEN CentText := 'EIGHTY NINE CENTS ';

                IF (No * 100) = 90 THEN CentText := 'NINETY CENTS ';
                IF (No * 100) = 91 THEN CentText := 'NINETY ONE CENTS ';
                IF (No * 100) = 92 THEN CentText := 'NINETY TWO CENTS ';
                IF (No * 100) = 93 THEN CentText := 'NINETY THREE CENTS ';
                IF (No * 100) = 94 THEN CentText := 'NINETY FOUR CENTS ';
                IF (No * 100) = 95 THEN CentText := 'NINETY FIVE CENTS ';
                IF (No * 100) = 96 THEN CentText := 'NINETY SIX CENTS ';
                IF (No * 100) = 97 THEN CentText := 'NINETY SEVEN CENTS ';
                IF (No * 100) = 98 THEN CentText := 'NINETY EIGHT CENTS ';
                IF (No * 100) = 99 THEN CentText := 'NINETY NINE CENTS ';
            END;
        END;
        IF (No * 100) = 0 THEN
            AddToNoText(NoText, NoTextIndex, PrintExponent, '')
        ELSE
            AddToNoText(NoText, NoTextIndex, PrintExponent, Text028);
        AddToNoText(NoText, NoTextIndex, PrintExponent, CentText + 'ONLY');
    end;

    local procedure AddToNoText(var NoText: array[2] of Text[80]; var NoTextIndex: Integer; var PrintExponent: Boolean; AddText: Text);
    begin
        PrintExponent := TRUE;

        WHILE STRLEN(NoText[NoTextIndex] + ' ' + AddText) > MAXSTRLEN(NoText[1]) DO BEGIN
            NoTextIndex := NoTextIndex + 1;
            IF NoTextIndex > ARRAYLEN(NoText) THEN
                ERROR(Text029, AddText);
        END;

        NoText[NoTextIndex] := DELCHR(NoText[NoTextIndex] + ' ' + AddText, '<');
    end;

    procedure InitTextVariable();
    begin
        OnesText[1] := Text032;
        OnesText[2] := Text033;
        OnesText[3] := Text034;
        OnesText[4] := Text035;
        OnesText[5] := Text036;
        OnesText[6] := Text037;
        OnesText[7] := Text038;
        OnesText[8] := Text039;
        OnesText[9] := Text040;
        OnesText[10] := Text041;
        OnesText[11] := Text042;
        OnesText[12] := Text043;
        OnesText[13] := Text044;
        OnesText[14] := Text045;
        OnesText[15] := Text046;
        OnesText[16] := Text047;
        OnesText[17] := Text048;
        OnesText[18] := Text049;
        OnesText[19] := Text050;

        TensText[1] := '';
        TensText[2] := Text051;
        TensText[3] := Text052;
        TensText[4] := Text053;
        TensText[5] := Text054;
        TensText[6] := Text055;
        TensText[7] := Text056;
        TensText[8] := Text057;
        TensText[9] := Text058;

        ExponentText[1] := '';
        ExponentText[2] := Text059;
        ExponentText[3] := Text060;
        ExponentText[4] := Text061;
    end;

    local procedure GetCountryName(ParCountryRegionCode: Code[10]): Text;
    var
        CountryRegion: Record "Country/Region";
    begin
        IF CountryRegion.GET(ParCountryRegionCode) THEN
            EXIT(CountryRegion.Name)
        ELSE
            EXIT('');
    end;

    local procedure GetDONo(ParOrderNo: Code[20]): Text
    var
        SalesShipmentHeader: Record "Sales Shipment Header";
    begin
        if ParOrderNo = '' then
            exit('')
        else begin
            SalesShipmentHeader.Reset;
            SalesShipmentHeader.Setrange(SalesShipmentHeader."Order No.", ParOrderNo);
            if SalesShipmentHeader.FindLast then
                exit(SalesShipmentHeader."No.")
            else
                exit('');
        end;
    end;

    local procedure GetGSTPercentage(): Text
    var
        SalesInvoiceline: Record "Sales Invoice Line";
    begin
        SalesInvoiceline.Reset;
        SalesInvoiceline.Setrange(SalesInvoiceline."Document No.", "Sales Invoice Header"."No.");
        SalesInvoiceline.SetFilter(SalesInvoiceline."VAT %", '<>%1', 0);
        if SalesInvoiceline.FindFirst() then
            exit(Format(SalesInvoiceline."VAT %") + ' %')
        else
            exit('0 %');
    end;
}

