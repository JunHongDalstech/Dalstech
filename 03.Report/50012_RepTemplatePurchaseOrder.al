report 50012 "Template Purchase Order"
{
    // version DALS
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '03.Report/50012_RepTemplatePurchaseOrder.rdl';
    Caption = 'Purchase Order';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Purchase Order';
            column(DocumentType; "Document Type")
            {
            }
            column(DocNo; "No.")
            {
            }
            column(TitleName; TitleName)
            {
            }
            column(ShowLineDisc; ShowLineDisc)
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
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(ShowInternalInfo; ShowInternalInfo)
                    {
                    }
                    column(FormatRequestedDeliveryDate; FORMAT("Purchase Header"."Requested Receipt Date", 0, '<Day,2>/<Month,2>/<Year4>'))
                    {
                    }
                    column(GSTPercentage; GetGSTPercentage)
                    {
                    }
                    column(PurchaseHeaderDocType; "Purchase Header"."Document Type")
                    {
                    }
                    column(CurrCode; CurrCode)
                    {
                    }
                    column(PurchaseHeaderNo; "Purchase Header"."No.")
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
                    column(DocumentDate; "Purchase Header"."Document Date")
                    {
                    }
                    column(PostingDate; "Purchase Header"."Posting Date")
                    {
                    }
                    column(DueDate; "Purchase Header"."Due Date")
                    {
                    }
                    column(OrderDate; "Purchase Header"."Order Date")
                    {
                    }
                    column(RequestedDeliveryDate; "Purchase Header"."Requested Receipt Date")
                    {
                    }
                    column(PromisedDeliveryDate; "Purchase Header"."Promised Receipt Date")
                    {
                    }
                    column(VATRegistrationNo; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(YourReference; "Purchase Header"."Your Reference")
                    {
                    }
                    column(PricesIncVAT; "Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPersonName)
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(PricesInclVAT; FORMAT("Purchase Header"."Prices Including VAT"))
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
                    column(PayToVendorNo; "Purchase Header"."Pay-to Vendor No.")
                    {
                    }
                    column(PayToName; "Purchase Header"."Pay-to Name")
                    {
                    }
                    column(PayToName2; "Purchase Header"."Pay-to Name 2")
                    {
                    }
                    column(PayToAddress; "Purchase Header"."Pay-to Address")
                    {
                    }
                    column(PayToAddress2; "Purchase Header"."Pay-to Address 2")
                    {
                    }
                    column(PayToPostCode; "Purchase Header"."Pay-to Post Code")
                    {
                    }
                    column(PayToCounty; "Purchase Header"."Pay-to County")
                    {
                    }
                    column(PayToContact; "Purchase Header"."Pay-to Contact")
                    {
                    }
                    column(PayToCountry; PayToCountry)
                    {
                    }
                    column(PayToVendorPhoneNo; PayToVendorPhoneNo)
                    {
                    }
                    column(PayToVendorFaxNo; PayToVendorFaxNo)
                    {
                    }
                    column(VATIdentifier; GetVATIdentifier("Purchase Header"."No."))
                    {
                    }
                    column(ShipToCode; "Purchase Header"."Ship-to Code")
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
                    column(DimensionCode1; "Purchase Header"."Shortcut Dimension 1 Code")
                    {
                    }
                    column(DimensionCode2; "Purchase Header"."Shortcut Dimension 2 Code")
                    {
                    }
                    column(ExtDocNo; "Purchase Header"."Vendor Order No.")
                    {
                    }
                    column(ShippingAgentDescription; ShippingAgentDescription)
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
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
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"),
                                       "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem();
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(Description; "Purchase Line".Description)
                        {
                        }
                        column(Description2; "Purchase Line"."Description 2")
                        {
                        }
                        column(ItemDescription; GetItemDescription("Purchase Line"."No."))
                        {
                        }
                        column(LineNo; "Purchase Line"."Line No.")
                        {
                        }
                        column(Sequence; Sequence)
                        {
                        }
                        column(ShowLine; ShowLine)
                        {
                        }
                        Column(ItemSpecification; ItemSpecification)
                        {
                        }
                        column(Type_PurchLine; FORMAT("Purchase Line".Type))
                        {
                        }
                        column(No_PurchLine; "Purchase Line"."No.")
                        {
                        }
                        column(ItemNo; ItemNo)
                        {
                        }
                        column(Quantity; "Purchase Line".Quantity)
                        {
                        }
                        column(UOMCode; "Purchase Line"."Unit of Measure Code")
                        {
                        }
                        column(DirectUnitCost; "Purchase Line"."Direct Unit Cost")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDiscountPercentage; "Purchase Line"."Line Discount %")
                        {
                        }
                        column(LineAmount; "Purchase Line"."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(InvDiscAmount_PurchLine; "Purchase Line"."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Amount; "Purchase Line".Amount)
                        {
                        }
                        column(AmountIncludingVAT; "Purchase Line"."Amount Including VAT")
                        {
                        }
                        column(VATAmount; "Purchase Line"."Amount Including VAT" - "Purchase Line".Amount)
                        {
                        }


                        trigger OnAfterGetRecord();
                        begin
                            IF Number = 1 THEN
                                PurchLine.FIND('-')
                            ELSE
                                PurchLine.NEXT;
                            "Purchase Line" := PurchLine;

                            IF NOT "Purchase Header"."Prices Including VAT" AND
                               (PurchLine."VAT Calculation Type" = PurchLine."VAT Calculation Type"::"Full VAT")
                            THEN
                                PurchLine."Line Amount" := 0;

                            //IF (PurchLine.Type = PurchLine.Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                            //  "Purchase Line"."No." := '';
                            AllowInvDisctxt := FORMAT("Purchase Line"."Allow Invoice Disc.");
                            TotalSubTotal += "Purchase Line"."Line Amount";
                            TotalInvoiceDiscountAmount -= "Purchase Line"."Inv. Discount Amount";
                            TotalAmount += "Purchase Line".Amount;

                            //DALS:SG
                            IF (PurchLine.Type.AsInteger() <> 0) AND (PurchLine.Quantity <> 0) THEN
                                SequenceCount := SequenceCount + 1;
                            IF (PurchLine.Type.AsInteger() <> 0) AND (PurchLine.Quantity <> 0) THEN
                                Sequence := SequenceCount
                            ELSE
                                Sequence := 0;

                            ItemNo := PurchLine."No.";
                            IF (PurchLine.Type.AsInteger() <> 0) AND (PurchLine.Quantity = 0) THEN
                                ShowLine := FALSE
                            ELSE
                                ShowLine := TRUE;

                            IF PurchLine.Type.AsInteger() <> 0 THEN
                                TempShowLine := ShowLine
                            ELSE
                                TempShowLine := TempShowLine;

                            IF TempShowLine = FALSE THEN
                                CurrReport.SKIP;

                            vType := '1';
                            IF PurchLine.Type.AsInteger() = 0 THEN
                                vType := '0';

                            TotalAmount := ABS(TotalAmountInclVAT);
                            InitTextVariable;
                            FormatNoText(DescriptionLine, ABS(TotalAmountInclVAT), '');

                            if ShowLineDisc = false then begin
                                if "Purchase Line"."Line Discount Amount" <> 0 then
                                    ShowLineDisc := true;
                            end;
                        end;

                        trigger OnPostDataItem();
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := PurchLine.FIND('+');
                            WHILE MoreLines AND (PurchLine.Description = '') AND (PurchLine."Description 2" = '') AND
                                  (PurchLine."No." = '') AND (PurchLine.Quantity = 0) AND
                                  (PurchLine.Amount = 0) DO
                                MoreLines := PurchLine.NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.", 0, PurchLine."Line No.");
                            SETRANGE(Number, 1, PurchLine.COUNT);
                            //CurrReport.CREATETOTALS(PurchLine."Line Amount",PurchLine."Inv. Discount Amount");

                            //DALS:SG
                            TempShowLine := TRUE;
                            SequenceCount := 0;
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
                        column(PaytoVendNo_PurchHdr; "Purchase Header"."Pay-to Vendor No.")
                        {
                        }

                        trigger OnPreDataItem();
                        begin
                            IF "Purchase Header"."Buy-from Vendor No." = "Purchase Header"."Pay-to Vendor No." THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                var
                    PrepmtPurchLine: Record "Purchase Line" temporary;
                    TempPurchLine: Record "Purchase Line" temporary;
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header", PurchLine, 0);
                    PurchLine.CalcVATAmountLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    PurchLine.UpdateVATOnLines(0, "Purchase Header", PurchLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Purchase Header"."Currency Code", "Purchase Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    PrepmtInvBuf.DELETEALL;
                    PurchPostPrepmt.GetPurchLines("Purchase Header", 0, PrepmtPurchLine);
                    IF (NOT PrepmtPurchLine.ISEMPTY) THEN BEGIN
                        PurchPostPrepmt.GetPurchLinesToDeduct("Purchase Header", TempPurchLine);
                        IF NOT TempPurchLine.ISEMPTY THEN
                            PurchPostPrepmt.CalcVATAmountLines("Purchase Header", TempPurchLine, PrePmtVATAmountLineDeduct, 1);
                    END;
                    PurchPostPrepmt.CalcVATAmountLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    PrepmtVATAmountLine.DeductVATAmountLine(PrePmtVATAmountLineDeduct);
                    PurchPostPrepmt.UpdateVATOnLines("Purchase Header", PrepmtPurchLine, PrepmtVATAmountLine, 0);
                    //PurchPostPrepmt.BuildInvLineBuffer2("Purchase Header", PrepmtPurchLine, 0, PrepmtInvBuf);
                    PrepmtVATAmount := PrepmtVATAmountLine.GetTotalVATAmount;
                    PrepmtVATBaseAmount := PrepmtVATAmountLine.GetTotalVATBase;
                    PrepmtTotalAmountInclVAT := PrepmtVATAmountLine.GetTotalAmountInclVAT;

                    IF Number > 1 THEN
                        CopyText := Text003;
                    //CurrReport.PAGENO := 1;
                    OutputNo := OutputNo + 1;

                    TotalSubTotal := 0;
                    TotalAmount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    //IF NOT CurrReport.PREVIEW THEN
                    PurchCountPrinted.RUN("Purchase Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 0;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                CASE "Document Type" OF
                    "Document Type"::Quote:
                        TitleName := 'Requisition';
                    ELSE
                        TitleName := FORMAT("Document Type");

                        TitleName := 'Purchase ' + TitleName;
                END;
                ShowLineDisc := FALSE;

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END ELSE
                    FormatAddr.Company(CompanyAddr, CompanyInfo);

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF "Purchaser Code" = '' THEN BEGIN
                    SalesPurchPerson.INIT;
                    PurchaserText := '';
                END ELSE BEGIN
                    SalesPurchPerson.GET("Purchaser Code");
                    PurchaserText := Text000
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
                    TotalInclVATText := STRSUBSTNO(Text002, GLSetup."LCY Code");
                    TotalExclVATText := STRSUBSTNO(Text006, GLSetup."LCY Code");
                END ELSE BEGIN
                    TotalText := STRSUBSTNO(Text001, "Currency Code");
                    TotalInclVATText := STRSUBSTNO(Text002, "Currency Code");
                    TotalExclVATText := STRSUBSTNO(Text006, "Currency Code");
                END;

                FormatAddr.PurchHeaderBuyFrom(BuyFromAddr, "Purchase Header");
                IF "Buy-from Vendor No." <> "Pay-to Vendor No." THEN
                    FormatAddr.PurchHeaderPayTo(VendAddr, "Purchase Header");
                IF "Payment Terms Code" = '' THEN
                    PaymentTerms.INIT
                ELSE BEGIN
                    PaymentTerms.GET("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                END;
                IF "Prepmt. Payment Terms Code" = '' THEN
                    PrepmtPaymentTerms.INIT
                ELSE BEGIN
                    PrepmtPaymentTerms.GET("Prepmt. Payment Terms Code");
                    PrepmtPaymentTerms.TranslateDescription(PrepmtPaymentTerms, "Language Code");
                END;
                IF "Shipment Method Code" = '' THEN
                    ShipmentMethod.INIT
                ELSE BEGIN
                    ShipmentMethod.GET("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                END;


                FormatAddr.PurchHeaderShipTo(ShipToAddr, "Purchase Header");

                //IF NOT CurrReport.PREVIEW THEN BEGIN
                IF ArchiveDocument THEN
                    ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                IF LogInteraction THEN BEGIN
                    CALCFIELDS("No. of Archived Versions");
                    SegManagement.LogDocument(
                      13, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Buy-from Vendor No.",
                      "Purchaser Code", '', "Posting Description", '');
                END;
                //END;

                PricesInclVATtxt := FORMAT("Prices Including VAT");

                //Start
                Sequence := 0;

                IF "Currency Code" = '' THEN
                    CurrCode := GLSetup."LCY Code"
                ELSE
                    CurrCode := "Currency Code";

                //Billing
                IF TableCountryRegion.GET("Pay-to Country/Region Code") THEN
                    PayToCountry := TableCountryRegion.Name
                ELSE
                    PayToCountry := '';

                IF TableVendor.GET("Pay-to Vendor No.") THEN BEGIN
                    PayToVendorPhoneNo := TableVendor."Phone No.";
                    PayToVendorFaxNo := TableVendor."Fax No.";
                END
                ELSE BEGIN
                    PayToVendorPhoneNo := '';
                    PayToVendorFaxNo := '';
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
                    IF TableLocation.GET("Location Code") THEN BEGIN
                        ShipToPhoneNo := TableLocation."Phone No.";
                        ShipToFaxNo := TableLocation."Fax No.";
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
                END;

                //Salesperson
                IF SalesPurchPerson.GET("Purchaser Code") THEN
                    SalesPurchPersonName := SalesPurchPerson.Name
                ELSE
                    SalesPurchPersonName := ' ';

                //Payment Terms
                IF PaymentTerms.GET("Payment Terms Code") THEN
                    PaymentTermsDescription := PaymentTerms.Description
                ELSE
                    PaymentTermsDescription := ' ';

                //Organizational Level Code
                IF Contact.GET("Buy-from Contact No.") THEN begin
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

            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
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
            ArchiveDocument := True;//PurchSetup."Archive Quotes and Orders";
            ShowLogo := True;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnPreReport();
    begin
        GLSetup.GET;
        PurchSetup.GET;
        CompanyInfo.GET;
        CompanyInfo.CALCFIELDS(Picture);
        IF TableCountryRegion.GET(CompanyInfo."Country/Region Code") THEN
            CompCountryName := TableCountryRegion.Name
        ELSE
            CompCountryName := '';
    end;

    var
        Text000: Label 'Purchaser';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. GST';
        Text003: Label ' COPY';
        Text006: Label 'Total %1 Excl. GST';
        GLSetup: Record "General Ledger Setup";
        CompanyInfo: Record "Company Information";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        Contact: Record "Contact";
        PrepmtPaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        VATAmountLine: Record "VAT Amount Line" temporary;
        PrepmtVATAmountLine: Record "VAT Amount Line" temporary;
        PrePmtVATAmountLineDeduct: Record "VAT Amount Line" temporary;
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        PrepmtDimSetEntry: Record "Dimension Set Entry";
        PrepmtInvBuf: Record "Prepayment Inv. Line Buffer" temporary;
        RespCenter: Record "Responsibility Center";
        // Language: Record "Language";
        CurrExchRate: Record "Currency Exchange Rate";
        PurchSetup: Record "Purchases & Payables Setup";
        PurchCountPrinted: Codeunit "Purch.Header-Printed";
        FormatAddr: Codeunit "Format Address";
        PurchPost: Codeunit "Purch.-Post";
        ArchiveManagement: Codeunit ArchiveManagement;
        SegManagement: Codeunit "SegManagement";
        PurchPostPrepmt: Codeunit "Purchase-Post Prepayments";
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        BuyFromAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalInclVATText: Text[50];
        TotalExclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        OutputNo: Integer;
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
        VALExchRate: Text[50];
        PrepmtVATAmount: Decimal;
        PrepmtVATBaseAmount: Decimal;
        PrepmtAmountInclVAT: Decimal;
        PrepmtTotalAmountInclVAT: Decimal;
        PrepmtLineAmount: Decimal;
        PricesInclVATtxt: Text[30];
        AllowInvDisctxt: Text[30];
        ArchiveDocumentEnable: Boolean;
        LogInteractionEnable: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalInvoiceDiscountAmount: Decimal;
        ">>DALS:SG Text": Integer;
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
        ">>DALS:SG": Integer;
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text[80];
        CentText: Text[30];
        TitleName: Text;
        ShowLine: Boolean;
        TempShowLine: Boolean;
        CurrCode: Code[10];
        Sequence: Integer;
        SequenceCount: Integer;
        ShowLogo: Boolean;
        PayToCountry: Text[50];
        TableCountryRegion: Record "Country/Region";
        PayToVendorPhoneNo: Text[50];
        PayToVendorFaxNo: Text[50];
        TableCust: Record "Customer";
        TableVendor: Record "Vendor";
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
        ShipmentMethodDescription: Text;
        ShowLineDisc: Boolean;
        ItemNo: Text;
        UserSetup: Record "User Setup";
        Organizationallevel: Record "Organizational Level";
        PurchaseTerms1: Text;
        PurchaseTerms2: Text;
        Foraccountof: Text;
        TemplateSetup: Record "Template Setup";
        ShippingAgentDescription: Text;
        ItemSpecification: Text;


    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;

    procedure ">>DALS:SG Functions"();
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
        IF CurrCode <> '' THEN
            NoText[1] := CurrCode;
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

    local procedure GetVATIdentifier(ParDocNo: Code[20]): Text
    var
        PurchaseLine: Record "Purchase Line";
    begin
        if ParDocNo = '' then
            exit('')
        else begin
            PurchaseLine.Reset;
            PurchaseLine.Setrange(PurchaseLine."Document No.", ParDocNo);
            PurchaseLine.SetFilter(PurchaseLine."VAT Identifier", '<>%1', '');
            if PurchaseLine.FindSet() then
                exit(PurchaseLine."VAT Identifier")
            else
                exit('');
        end;
    end;

    local procedure GetDimensionName(ParDimensionCode: Code[20]; ParDimensionValueCode: Code[20]): Text;
    var
        DimensionValue: Record "Dimension Value";
    begin
        DimensionValue.Reset;
        DimensionValue.SetRange(DimensionValue."Dimension Code", ParDimensionCode);
        DimensionValue.SetRange(DimensionValue."Code", ParDimensionValueCode);
        IF DimensionValue.FindFirst() THEN
            EXIT(DimensionValue.Name)
        ELSE
            EXIT('');
    end;

    local procedure GetItemDescription(ParItemNo: Code[20]): Text;
    var
        Item: Record "item";
    begin
        IF Item.get(ParItemNo) THEN
            EXIT(Item.Description)
        ELSE
            EXIT('');
    end;

    local procedure GetGSTPercentage(): Text
    var
        PurchLine: Record "Purchase Line";
    begin
        PurchLine.Reset;
        PurchLine.Setrange(PurchLine."Document Type", "Purchase Header"."Document Type");
        PurchLine.Setrange(PurchLine."Document No.", "Purchase Header"."No.");
        PurchLine.SetFilter(PurchLine."VAT %", '<>%1', 0);
        if PurchLine.FindFirst() then
            exit(Format(PurchLine."VAT %") + ' %')
        else
            exit('0 %');
    end;
}

