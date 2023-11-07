report 50003 "Template Sales Document"
{
    // version DALS
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '03.Report/50003_RepTemplateSalesDocument.rdl';
    DefaultLayout = RDLC;
    Caption = 'Sales Document';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Sales Document';
            column(DocumentType; "Document Type")
            {
            }
            column(DocNo; "No.")
            {
            }
            column(TitleName; TitleName)
            {
            }
            column(TCYCode; SGLocalizationSetup."DALS TCY Code")
            {
            }
            column(SalesTerms; SalesTerms)
            {
            }
            column(QuoteNo; QuoteNo)
            {
            }
            column(ShowLineDisc; ShowLineDisc)
            {
            }
            column(BankCode; BankCode)
            {
            }

            column(GSTPercentage; GetGSTPercentage)
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
                    column(DocumentDate; "Sales Header"."Document Date")
                    {
                    }
                    column(ShipmentDate; "Sales Header"."Shipment Date")
                    {
                    }
                    column(PostingDate; "Sales Header"."Posting Date")
                    {
                    }
                    column(DueDate; "Sales Header"."Due Date")
                    {
                    }
                    column(OrderDate; "Sales Header"."Order Date")
                    {
                    }
                    column(RequestedDeliveryDate; "Sales Header"."Requested Delivery Date")
                    {
                    }
                    column(VATRegistrationNo; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(YourReference; "Sales Header"."Your Reference")
                    {
                    }
                    column(PricesIncVAT; "Sales Header"."Prices Including VAT")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPersonName)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesInclVAT; FORMAT("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethodDescription)
                    {
                    }
                    column(PaymentTermsDescription; PaymentTermsDescription)
                    {
                    }

                    column(CommentText; CommentText)
                    {
                    }
                    column(VATRegsNo; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(CurrCode; CurrCode)
                    {
                    }
                    column(SellToCustomerNo; "Sales Header"."Sell-to Customer No.")
                    {
                    }
                    column(No; "Sales Header"."No.")
                    {
                    }
                    column(BilltoCustNo; "Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(BillToName; "Sales Header"."Bill-to Name")
                    {
                    }
                    column(BillToName2; "Sales Header"."Bill-to Name 2")
                    {
                    }
                    column(BillToAddress; "Sales Header"."Bill-to Address")
                    {
                    }
                    column(BillToAddress2; "Sales Header"."Bill-to Address 2")
                    {
                    }
                    column(BillToPostCode; "Sales Header"."Bill-to Post Code")
                    {
                    }
                    column(BillToCounty; "Sales Header"."Bill-to County")
                    {
                    }
                    column(BillToContact; "Sales Header"."Bill-to Contact")
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
                    column(ShipToCode; "Sales Header"."Ship-to Code")
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
                    column(DimensionCode1; "Sales Header"."Shortcut Dimension 1 Code")
                    {
                    }
                    column(DimensionCode2; "Sales Header"."Shortcut Dimension 2 Code")
                    {
                    }
                    column(ExtDocNo; "Sales Header"."External Document No.")
                    {
                    }
                    column(VATBaseDisc; "Sales Header"."VAT Base Discount %")
                    {
                    }
                    column(WorkDescription; WorkDescription)
                    {
                    }

                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_IntegerLine; DimensionLoop1.Number)
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FIND('-') THEN
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
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"),
                                       "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(Sequence; Sequence)
                        {
                        }
                        column(Type; FORMAT("Sales Line".Type))
                        {
                        }

                        column(LineNo; "Sales Line"."Line No.")
                        {
                        }
                        column(No_SalesLine; "Sales Line"."No.")
                        {
                        }
                        column(ItemNo; ItemNo)
                        {
                        }

                        //column(Description; LineDescription)
                        column(DescriptionLine; "Sales Line".Description)
                        {
                        }
                        column(DescriptionLine2; "Sales Line"."Description 2")
                        {
                        }
                        column(CrossReference; "Sales Line"."Item Reference No.")
                        {
                        }
                        column(LineItemAddInfo; LineItemAddInfo)
                        {
                        }
                        column(Quantity; "Sales Line".Quantity)
                        {
                        }
                        column(UOMCode; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        column(UnitPrice; "Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineAmount; "Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineDiscountPercentage; "Sales Line"."Line Discount %")
                        {
                        }
                        column(LineDiscountAmount; "Sales Line"."Line Discount Amount")
                        {
                        }
                        column(AllowInvDisc; "Sales Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier; "Sales Line"."VAT Identifier")
                        {
                        }
                        column(Amount; "Sales Line".Amount)
                        {
                        }
                        column(AmountIncludingVAT; "Sales Line"."Amount Including VAT")
                        {
                        }
                        column(InvDiscAmount_SalesLine; "Sales Line"."Inv. Discount Amount")
                        {
                        }
                        column(AmountInWords; DescriptionLine[1] + ' ' + DescriptionLine[2])
                        {
                        }
                        column(vType; vType)
                        {
                        }

                        column(PlannedDeliveryDate; "Sales Line"."Planned Delivery Date")
                        {
                        }

                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                                SalesLine.FIND('-')
                            ELSE
                                SalesLine.NEXT;
                            "Sales Line" := SalesLine;
                            IF DisplayAssemblyInformation THEN
                                AsmInfoExistsForLine := SalesLine.AsmToOrderExists(AsmHeader);

                            IF NOT "Sales Header"."Prices Including VAT" AND
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            THEN
                                SalesLine."Line Amount" := 0;

                            //IF (SalesLine.Type = SalesLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                            //  "Sales Line"."No." := '';

                            TotalSubTotal += SalesLine."Line Amount";
                            IF (SalesLine.Type.AsInteger() <> 0) AND (SalesLine.Quantity <> 0) THEN
                                Sequence := Sequence + 1
                            ELSE
                                Sequence := Sequence;

                            CR := 13;
                            LF := 10;

                            LineItemAddInfo := GeneralCodeunit.GetLineAdditionalInfo(37, SalesLine."Document No.", SalesLine."Line No.");

                            IF (SalesLine.Type.AsInteger() <> 0) AND (SalesLine.Quantity = 0) THEN
                                ShowLine := FALSE
                            ELSE
                                ShowLine := TRUE;

                            IF SalesLine.Type.AsInteger() <> 0 THEN
                                TempShowLine := ShowLine
                            ELSE
                                TempShowLine := TempShowLine;

                            IF TempShowLine = FALSE THEN
                                CurrReport.SKIP;

                            vType := '1';
                            IF SalesLine.Type.AsInteger() = 0 THEN
                                vType := '0';

                            //DALS:SG START #LW001B
                            if ShowLineDisc = false then begin
                                if salesline."Line Discount Amount" <> 0 then
                                    ShowLineDisc := true;
                            end;
                            //DALS:SG END #LW001B

                            InitTextVariable;
                            FormatNoText(DescriptionLine, ABS(TotalAmountInclVAT), CurrCode);
                        end;

                        trigger OnPostDataItem();
                        begin
                            SalesLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := SalesLine.FIND('+');
                            WHILE MoreLines AND (SalesLine.Description = '') AND (SalesLine."Description 2" = '') AND
                                  (SalesLine."No." = '') AND (SalesLine.Quantity = 0) AND
                                  (SalesLine.Amount = 0)
                            DO
                                MoreLines := SalesLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SalesLine.SETRANGE(SalesLine."Line No.", 0, SalesLine."Line No.");
                            SETRANGE(Number, 1, SalesLine.COUNT);
                            //CurrReport.CREATETOTALS(SalesLine."Line Amount",SalesLine."Inv. Discount Amount");

                            TempShowLine := TRUE;
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
                        column(SelltoCustNo_SalesHeader; "Sales Header"."Sell-to Customer No.")
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
                var
                    PrepmtSalesLine: Record "Sales Line" temporary;
                    SalesPost: Codeunit "Sales-Post";
                    TempSalesLine: Record "Sales Line" temporary;
                    TempSalesLineDisc: Record "Sales Line" temporary;
                    lvTotalSalesLine: array[3] of Record "Sales Line";
                    lvTotalSalesLineLCY: array[3] of Record "Sales Line";
                    lvVATAmountText: array[3] of Text;
                    lvProfitLCY: array[3] of Decimal;
                    lvProfitPct: array[3] of Decimal;
                    lvTotalAdjCostLCY: array[3] of Decimal;
                    lvVATAmount: array[3] of Decimal;
                begin
                    TotalSubTotal := 0;
                    Sequence := 0;
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    CLEAR(TempSalesLineDisc);
                    VATAmountLine.DELETEALL;
                    TempSalesLineDisc.DELETEALL;
                    SalesLine.DELETEALL;
                    SalesPost.GetSalesLines("Sales Header", SalesLine, 0);
                    SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                    SalesLine.UpdateVATOnLines(0, "Sales Header", SalesLine, VATAmountLine);
                    SalesPost.GetSalesLines("Sales Header", TempSalesLineDisc, 1);
                    TempSalesLineDisc.CalcVATAmountLines(1, "Sales Header", TempSalesLineDisc, VATAmountLine);
                    TempSalesLineDisc.UpdateVATOnLines(1, "Sales Header", TempSalesLineDisc, VATAmountLine);

                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", "Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    SalesPostPrepmt.GetSalesLines("Sales Header", 0, PrepmtSalesLine);

                    IF (NOT PrepmtSalesLine.ISEMPTY) THEN BEGIN
                        SalesPostPrepmt.GetSalesLinesToDeduct("Sales Header", TempSalesLine);
                        IF NOT TempSalesLine.ISEMPTY THEN
                            SalesPostPrepmt.CalcVATAmountLines("Sales Header", TempSalesLine, PrepmtVATAmountLineDeduct, 1);
                    END;
                    SalesPostPrepmt.CalcVATAmountLines("Sales Header", PrepmtSalesLine, PrepmtVATAmountLine, 0);
                    PrepmtVATAmountLine.DeductVATAmountLine(PrepmtVATAmountLineDeduct);
                    SalesPostPrepmt.UpdateVATOnLines("Sales Header", PrepmtSalesLine, PrepmtVATAmountLine, 0);
                    //SalesPostPrepmt.BuildInvLineBuffer2("Sales Header", PrepmtSalesLine, 0, PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN BEGIN
                        CopyText := Text003;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;

                    NNC_TotalLCY := 0;
                    NNC_TotalExclVAT := 0;
                    NNC_VATAmt := 0;
                    NNC_TotalInclVAT := 0;
                    NNC_PmtDiscOnVAT := 0;
                    NNC_TotalInclVAT2 := 0;
                    NNC_VatAmt2 := 0;
                    NNC_TotalExclVAT2 := 0;
                    NNC_SalesLineLineAmt := 0;
                    NNC_SalesLineInvDiscAmt := 0;
                end;

                trigger OnPostDataItem();
                begin
                    IF Print THEN
                        SalesCountPrinted.RUN("Sales Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CASE "Document Type" OF
                    "Document Type"::Quote:
                        begin
                            TitleName := 'Quotation';
                            SalesTerms := TemplateSetup."Sales Quote Terms";
                        end;
                    "Document Type"::Order:
                        begin
                            TitleName := 'Order Confirmation';
                            SalesTerms := TemplateSetup."Sales Order Terms";
                        end;
                    "Document Type"::Invoice:
                        TitleName := 'Invoice';
                    "Document Type"::"Credit Memo":
                        TitleName := 'Credit Note';
                    ELSE
                        TitleName := UPPERCASE(FORMAT("Document Type"));
                END;
                ShowLineDisc := False;
                GSTPercentage := 0;

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                IF TableCountryRegion.GET(CompanyInfo."Country/Region Code") THEN
                    CompCountryName := TableCountryRegion.Name;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF Print THEN BEGIN
                    IF ArchiveDocument THEN
                        ArchiveManagement.StoreSalesDocument("Sales Header", LogInteraction);

                    IF LogInteraction THEN BEGIN
                        CALCFIELDS("No. of Archived Versions");
                        IF "Bill-to Contact No." <> '' THEN
                            SegManagement.LogDocument(
                              3, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Contact, "Bill-to Contact No."
                              , "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.")
                        ELSE
                            SegManagement.LogDocument(
                              3, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Customer, "Bill-to Customer No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
                    END;
                END;

                //Start
                Sequence := 0;

                IF "Currency Code" = '' THEN
                    CurrCode := GLSetup."LCY Code"
                ELSE
                    CurrCode := "Currency Code";

                //Billing
                IF TableCountryRegion.GET("Bill-to Country/Region Code") THEN
                    BillToCountry := TableCountryRegion.Name
                ELSE
                    BillToCountry := '';

                IF TableCust.GET("Bill-to Customer No.") THEN BEGIN
                    BillToCustPhoneNo := TableCust."Phone No.";
                    BillToCustFaxNo := TableCust."Fax No.";
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

                //Comment Line
                CR := 13;
                LF := 10;
                CommentLine.Reset();
                CommentLine.Setrange(CommentLine."Table Name", CommentLine."Table Name"::Customer);
                CommentLine.Setrange(CommentLine."No.");
                if CommentLine.findset then begin
                    repeat
                        CommentText := CommentText + Format(CR) + Format(LF) + CommentLine.Comment;
                    until CommentLine.next = 0;
                end;

                //Shipment Method
                IF ShipmentMethod.GET("Shipment Method Code") THEN
                    ShipmentMethodDescription := ShipmentMethod.Description
                ELSE
                    ShipmentMethodDescription := ' ';

                //Quote No
                if "Quote No." = '' then
                    QuoteNo := 'N/A'
                else
                    QuoteNo := "Quote No.";

                //WorkDescription
                WorkDescription := GetWorkDescription();

                //T & C

            end;

            trigger OnPreDataItem();
            begin

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
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        GLSetup.GET;
        CompanyInfo.GET;

        CompanyInfo.CALCFIELDS(CompanyInfo.Picture);
        IF TableCountryRegion.GET(CompanyInfo."Country/Region Code") THEN
            CompCountryName := TableCountryRegion.Name
        ELSE
            CompCountryName := '';

    end;

    trigger OnPreReport()
    begin
        TemplateSetup.Get;
    end;

    var
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. GST';
        Text003: Label ' COPY';
        Text004: Label 'Order Confirmation%1';
        PageCaptionCap: Label 'Page %1 of %2';
        Text006: Label 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        TitleName: Text;
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SaleZPSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        TempPrepmtDimSetEntry: Record "Dimension Set Entry" temporary;
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";

        CurrExchRate: Record "Currency Exchange Rate";
        AsmHeader: Record "Assembly Header";
        AsmLine: Record "Assembly Line";
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        ArchiveManagement: Codeunit ArchiveManagement;
        SalesPostPrepmt: Codeunit "Sales-Post Prepayments";
        DimMgt: Codeunit DimensionManagement;
        SGLocalizationSetup: Record DALS_01TabSGLocalizationSetup;
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
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
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        Text007: Label 'GST Amount Specification in ';
        Text008: Label 'Local Currency';
        Text009: Label 'Exchange rate: %1/%2';
        VALExchRate: Text[50];
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtAmountInclVAT: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        OutputNo: Integer;
        NNC_TotalLCY: Decimal;
        NNC_TotalExclVAT: Decimal;
        NNC_VATAmt: Decimal;
        NNC_TotalInclVAT: Decimal;
        NNC_PmtDiscOnVAT: Decimal;
        NNC_TotalInclVAT2: Decimal;
        NNC_VatAmt2: Decimal;
        NNC_TotalExclVAT2: Decimal;
        NNC_SalesLineLineAmt: Decimal;
        NNC_SalesLineInvDiscAmt: Decimal;
        Print: Boolean;
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        AsmInfoExistsForLine: Boolean;
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
        TotalSubTotal: Decimal;
        GSTPercentage: Decimal;
        VATPostingSetup: Record "VAT Posting Setup";
        TableLine: Record "Sales Line";
        TotalFor: Label 'Total for ';
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
        ShipmentMethodDescription: Text;
        ShowLineDisc: Boolean;
        ItemNo: Text;
        //LineDescription: Text;
        CR: Char;
        LF: Char;
        QuoteNo: Text;
        UserSetup: Record "User Setup";
        TemplateSetup: Record "Template Setup";
        Terms: Text;
        BankCode: Code[20];
        BankAccount: Record "Bank Account";
        BankCaption: Text;
        BankColon: Text;
        BankValue: Text;
        GeneralCodeunit: Codeunit "General Codeunit";
        WorkDescription: Text;
        LineItemAddInfo: Text;
        SalesTerms: Text;
        CommentLine: Record "Comment Line";
        CommentText: Text;

    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure GetUnitOfMeasureDescr(UOMCode: Code[10]): Text[10];
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

    procedure ">>DALS:SG Func"();
    begin
    end;

    procedure FormatNoText(var NoText: array[2] of Text[80]; No: Decimal; CurrencyCode: Code[10]);
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
        //NoText[1] := '****';
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

    local procedure AddToNoText(var NoText: array[2] of Text[80]; var NoTextIndex: Integer; var PrintExponent: Boolean; AddText: Text[30]);
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

    local procedure GetGSTPercentage(): Text
    var
        SalesLine: Record "Sales Line";
    begin
        SalesLine.Reset;
        SalesLine.Setrange(SalesLine."Document Type", "Sales Header"."Document Type");
        SalesLine.Setrange(SalesLine."Document No.", "Sales Header"."No.");
        SalesLine.SetFilter(SalesLine."VAT %", '<>%1', 0);
        if SalesLine.FindFirst() then
            exit(Format(SalesLine."VAT %") + ' %')
        else
            exit('0 %');
    end;
}

