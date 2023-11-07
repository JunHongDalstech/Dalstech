report 50006 "Template Sales Delivery Order"
{
    // version DALS
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = '03.Report/50006_RepTemplateSalesDeliveryOrder.rdl';
    DefaultLayout = RDLC;
    Caption = 'Sales Delivery Order';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Shipment Header"; "Sales Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.";
            RequestFilterHeading = 'Posted Sales Shipment';
            column(No_SalesShptHeader; "No.")
            {
            }
            column(TitleName; TitleName)
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
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
                    column(Sequence; Sequence)
                    {
                    }
                    column(ShowLogo; ShowLogo)
                    {
                    }
                    column(SelltoCustNo; "Sales Shipment Header"."Sell-to Customer No.")
                    {
                    }
                    column(DocumentDate; "Sales Shipment Header"."Document Date")
                    {
                    }
                    column(PostingDate; "Sales Shipment Header"."Posting Date")
                    {
                    }
                    column(ShipmentDate; "Sales Shipment Header"."Shipment Date")
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(YourReference; "Sales Shipment Header"."Your Reference")
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethodDescription)
                    {
                    }
                    column(CustomerRegistrationNo; CustomerCard."DALS Customer Registration No.")
                    {
                    }
                    column(PaymentTermsDescription; PaymentTermsDescription)
                    {
                    }
                    column(CommentText; CommentText)
                    {
                    }
                    column(BilltoCustNo; "Sales Shipment Header"."Bill-to Customer No.")
                    {
                    }
                    column(BillToName; "Sales Shipment Header"."Bill-to Name")
                    {
                    }
                    column(BillToName2; "Sales Shipment Header"."Bill-to Name 2")
                    {
                    }
                    column(BillToAddress; "Sales Shipment Header"."Bill-to Address")
                    {
                    }
                    column(BillToAddress2; "Sales Shipment Header"."Bill-to Address 2")
                    {
                    }
                    column(BillToPostCode; "Sales Shipment Header"."Bill-to Post Code")
                    {
                    }
                    column(BillToCounty; "Sales Shipment Header"."Bill-to County")
                    {
                    }
                    column(BillToContact; "Sales Shipment Header"."Bill-to Contact")
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
                    column(ShipToCode; "Sales Shipment Header"."Ship-to Code")
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
                    column(ExtDocNo; "Sales Shipment Header"."External Document No.")
                    {
                    }

                    column(WorkDescription; WorkDescription)
                    {
                    }
                    column(OrderNo; "Sales Shipment Header"."Order No.")
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(CurrCode; CurrCode)
                    {
                    }
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Sales Shipment Header";
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
                                    DimText := STRSUBSTNO('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3', DimText,
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
                    dataitem("Sales Shipment Line"; "Sales Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(Description_SalesShptLine; Description)
                        {
                        }
                        column(Description_SalesShptLine2; "Description 2")
                        {
                        }
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(Net_Weight; "Net Weight")
                        {
                        }
                        column(Gross_Weight; "Gross Weight")
                        {
                        }
                        column(ShowCorrectionLines; ShowCorrectionLines)
                        {
                        }
                        column(Type_SalesShptLine; FORMAT("Sales Shipment Line".Type, 0, 2))
                        {
                        }
                        column(AsmHeaderExists; AsmHeaderExists)
                        {
                        }
                        column(DocumentNo_SalesShptLine; "Document No.")
                        {
                        }
                        column(LinNo; LinNo)
                        {
                        }
                        column(Qty_SalesShptLine; Quantity)
                        {
                        }
                        column(UOMCode_SalesShptLine; "Unit of Measure Code")
                        {
                        }
                        column(No_SalesShptLine; "No.")
                        {
                        }
                        column(CrossReference; "Item Reference No.")
                        {
                        }
                        column(LineItemAddInfo; LineItemAddInfo)
                        {
                        }
                        column(ItemNo; ItemNo)
                        {
                        }
                        column(LineNo_SalesShptLine; "Line No.")
                        {
                        }
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(DimLoopNumber; DimensionLoop2.Number)
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
                                        DimText := STRSUBSTNO('%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1; %2 - %3', DimText,
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
                            end;
                        }
                        dataitem(ItemTrackingLine; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            column(TrackingSpecBufferItemNo; TrackingSpecBuffer."Item No.")
                            {
                            }
                            column(TrackingSpecBufferDescription; TrackingSpecBuffer.Description)
                            {
                            }
                            column(TrackingSpecBufferLotNo; TrackingSpecBuffer."Lot No.")
                            {
                            }
                            column(TrackingSpecBufferSerialNo; TrackingSpecBuffer."Serial No.")
                            {
                            }
                            column(TrackingSpecBufferQty; TrackingSpecBuffer."Quantity (Base)")
                            {
                            }
                            column(ShowTotal; ShowTotal)
                            {
                            }
                            column(ShowGroup; ShowGroup)
                            {
                            }

                            trigger OnAfterGetRecord();
                            begin
                                IF Number = 1 THEN
                                    TrackingSpecBuffer.FINDSET
                                ELSE
                                    TrackingSpecBuffer.NEXT;
                                IF NOT ShowCorrectionLines AND TrackingSpecBuffer.Correction THEN
                                    CurrReport.SKIP;
                                IF TrackingSpecBuffer.Correction THEN
                                    TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                                ShowTotal := FALSE;
                                IF ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) THEN
                                    ShowTotal := TRUE;

                                ShowGroup := FALSE;
                                IF (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) OR
                                   (TrackingSpecBuffer."Item No." <> OldNo)
                                THEN BEGIN
                                    OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                                    OldNo := TrackingSpecBuffer."Item No.";
                                    TotalQty := 0;
                                END ELSE
                                    ShowGroup := TRUE;
                                TotalQty += TrackingSpecBuffer."Quantity (Base)";
                            end;

                            trigger OnPreDataItem();
                            begin
                                IF TrackingSpecCount = 0 THEN
                                    CurrReport.BREAK;
                                //CurrReport.NEWPAGE;
                                TrackingSpecBuffer.RESET;
                                TrackingSpecBuffer.SETCURRENTKEY(TrackingSpecBuffer."Source ID", TrackingSpecBuffer."Source Type", TrackingSpecBuffer."Source Subtype", TrackingSpecBuffer."Source Batch Name",
                                  TrackingSpecBuffer."Source Prod. Order Line", TrackingSpecBuffer."Source Ref. No.");
                                TrackingSpecBuffer.SETRANGE(TrackingSpecBuffer."Source ID", "Sales Shipment Line"."Document No.");
                                TrackingSpecBuffer.SETRANGE(TrackingSpecBuffer."Source Ref. No.", "Sales Shipment Line"."Line No.");
                                SETRANGE(Number, 1, TrackingSpecBuffer.COUNT);
                            end;
                        }
                        dataitem(DisplayAsmInfo; Integer)
                        {
                            column(PostedAsmLineUnitofMeasureCode; GetUnitOfMeasureDescr(PostedAsmLine."Unit of Measure Code"))
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(PostedAsmLineQuantity; PostedAsmLine.Quantity)
                            {
                                //DecimalPlaces = 0:5;
                            }
                            column(PostedAsmLineDescription; BlanksForIndent + PostedAsmLine.Description)
                            {
                            }
                            column(PostedAsmLineItemNo; BlanksForIndent + PostedAsmLine."No.")
                            {
                            }

                            trigger OnAfterGetRecord();
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                    PostedAsmLine.FINDSET
                                ELSE
                                    PostedAsmLine.NEXT;

                                IF ItemTranslation.GET(PostedAsmLine."No.",
                                     PostedAsmLine."Variant Code",
                                     "Sales Shipment Header"."Language Code")
                                THEN
                                    PostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem();
                            begin

                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK;
                                IF NOT AsmHeaderExists THEN
                                    CurrReport.BREAK;

                                PostedAsmLine.SETRANGE(PostedAsmLine."Document No.", PostedAsmHeader."No.");
                                SETRANGE(Number, 1, PostedAsmLine.COUNT);
                            end;
                        }

                        trigger OnAfterGetRecord();
                        begin
                            LinNo := "Line No.";
                            IF NOT ShowCorrectionLines AND Correction THEN
                                CurrReport.SKIP;

                            DimSetEntry2.SETRANGE("Dimension Set ID", "Dimension Set ID");
                            IF DisplayAssemblyInformation THEN
                                AsmHeaderExists := AsmToShipmentExists(PostedAsmHeader);

                            IF (Type.AsInteger() <> 0) AND (Quantity <> 0) THEN
                                SequenceCount := SequenceCount + 1;
                            IF (Type.AsInteger() <> 0) AND (Quantity <> 0) THEN
                                Sequence := SequenceCount
                            ELSE
                                Sequence := 0;

                            //IF Type = Type::"G/L Account" THEN
                            //   CurrReport.SKIP;

                            IF (Type.AsInteger() <> 0) AND (Quantity = 0) THEN
                                ShowLine := FALSE
                            ELSE
                                ShowLine := TRUE;

                            IF Type.AsInteger() <> 0 THEN
                                TempShowLine := ShowLine
                            ELSE
                                TempShowLine := TempShowLine;

                            IF TempShowLine = FALSE THEN
                                CurrReport.SKIP;

                            LineItemAddInfo := GeneralCodeunit.GetLineAdditionalInfo(111, "Document No.", "Line No.");
                        end;

                        trigger OnPreDataItem();
                        begin
                            MoreLines := FIND('+');
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK;
                            SETRANGE("Line No.", 0, "Line No.");
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
                        column(BilltoCustNo_SalesShptHeader; "Sales Shipment Header"."Bill-to Customer No.")
                        {
                        }
                        dataitem(TotalItemTracking; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = CONST(1));
                            column(TotalQuantity; TotalQty)
                            {
                            }
                        }

                        trigger OnPreDataItem();
                        begin
                            IF NOT ShowCustAddr THEN
                                CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord();
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text001;
                        OutputNo += 1;
                    END;
                    //CurrReport.PAGENO := 1;
                    TotalQty := 0;           // Item Tracking
                    Sequence := 0;
                    TempShowLine := TRUE;
                    SequenceCount := 0;
                end;

                trigger OnPostDataItem();
                begin
                    //IF NOT CurrReport.PREVIEW THEN
                    ShptCountPrinted.RUN("Sales Shipment Header");
                end;

                trigger OnPreDataItem();
                begin
                    NoOfLoops := 1 + ABS(NoOfCopies);
                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord();
            begin
                //CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                IF RespCenter.GET("Responsibility Center") THEN BEGIN
                    FormatAddr.RespCenter(CompanyAddr, RespCenter);
                    CompanyInfo."Phone No." := RespCenter."Phone No.";
                    CompanyInfo."Fax No." := RespCenter."Fax No.";
                END ELSE BEGIN
                    FormatAddr.Company(CompanyAddr, CompanyInfo);
                END;

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

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
                ShowCustAddr := "Bill-to Customer No." <> "Sell-to Customer No.";
                FOR i := 1 TO ARRAYLEN(CustAddr) DO
                    IF CustAddr[i] <> ShipToAddr[i] THEN
                        ShowCustAddr := TRUE;

                IF LogInteraction THEN
                    //IF NOT CurrReport.PREVIEW THEN
                    SegManagement.LogDocument(
                      5, "No.", 0, 0, DATABASE::Customer, "Sell-to Customer No.", "Salesperson Code",
                      "Campaign No.", "Posting Description", '');

                IF ShowLotSN THEN BEGIN
                    ItemTrackingDocMgt.SetRetrieveAsmItemTracking(TRUE);
                    TrackingSpecCount :=
                      ItemTrackingDocMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer,
                        "Sales Shipment Header"."No.", DATABASE::"Sales Shipment Header", 0);
                    ItemTrackingDocMgt.SetRetrieveAsmItemTracking(FALSE);
                END;

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
                    SalesPurchPersonName := '';

                //Payment Terms
                IF PaymentTerms.GET("Payment Terms Code") THEN
                    PaymentTermsDescription := PaymentTerms.Description
                else
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

                //WorkDescription
                //CalcFields("Work Description");
                WorkDescription := GetWorkDescription();

            end;

            trigger OnPreDataItem();
            begin
                // Item Tracking:
                IF ShowLotSN THEN BEGIN
                    TrackingSpecCount := 0;
                    OldRefNo := 0;
                    ShowGroup := FALSE;
                END;
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
                    field(TitleName; TitleName)
                    {
                        Caption = 'Title Name';
                        ApplicationArea = All;
                    }
                    field(ShowLotSN; ShowLotSN)
                    {
                        Caption = 'Show Serial/Lot Number Appendix';
                        ApplicationArea = All;
                        Visible = false;
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
            LogInteractionEnable := LogInteraction;
            ShowLogo := true;
        end;
    }

    labels
    {
    }

    trigger OnInitReport();
    begin
        CompanyInfo.GET;
        SalesSetup.GET;

        CompanyInfo.CALCFIELDS(Picture);
        IF TableCountryRegion.GET(CompanyInfo."Country/Region Code") THEN
            CompCountryName := TableCountryRegion.Name
        ELSE
            CompCountryName := '';
    end;

    var
        Text000: Label 'Salesperson';
        Text001: Label 'COPY';
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";

        TrackingSpecBuffer: Record "Tracking Specification" temporary;
        PostedAsmHeader: Record "Posted Assembly Header";
        PostedAsmLine: Record "Posted Assembly Line";
        ShptCountPrinted: Codeunit "Sales Shpt.-Printed";
        SegManagement: Codeunit SegManagement;
        ItemTrackingDocMgt: Codeunit "Item Tracking Doc. Management";
        RespCenter: Record "Responsibility Center";
        ItemTrackingAppendix: Report "Item Tracking Appendix";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        SalesPersonText: Text[20];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        OutputNo: Integer;
        NoOfLoops: Integer;
        TrackingSpecCount: Integer;
        Quantity_itemtracking: Integer;
        OldRefNo: Integer;
        OldNo: Code[20];
        CopyText: Text[30];
        ShowCustAddr: Boolean;
        i: Integer;
        FormatAddr: Codeunit "Format Address";
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        ShowCorrectionLines: Boolean;
        ShowLotSN: Boolean;
        ShowTotal: Boolean;
        ShowGroup: Boolean;
        TotalQty: Decimal;
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        AsmHeaderExists: Boolean;
        LinNo: Integer;
        ">>DALS:SG": Integer;
        PaymentTerms: Record "Payment Terms";
        ShipmentMethod: Record "Shipment Method";
        ShowLine: Boolean;
        TempShowLine: Boolean;
        CurrCode: Code[10];
        Sequence: Integer;
        SequenceCount: Integer;
        ShowLogo: Boolean;
        BillToCountry: Text[50];
        TableCountryRegion: Record "Country/Region";
        BillToCustPhoneNo: Text[50];
        BillToCustFaxNo: Text[50];
        BillToCustRegNo: Text;
        TableCust: Record "Customer";
        TableContact: Record "Contact";
        CompCountryName: Text[50];
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
        ItemNo: Text;
        CustomerCard: Record Customer;
        UserSetup: Record "User Setup";
        WorkDescription: Text;
        TitleName: Option "DELIVERY ORDER","PACKING LIST";
        GeneralCodeunit: Codeunit "General Codeunit";
        LineItemAddInfo: Text;
        CommentLine: Record "Comment Line";
        CommentText: Text;
        CR: Char;
        LF: Char;


    procedure InitializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewLogInteraction: Boolean; NewShowCorrectionLines: Boolean; NewShowLotSN: Boolean; DisplayAsmInfo: Boolean);
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        LogInteraction := NewLogInteraction;
        ShowCorrectionLines := NewShowCorrectionLines;
        ShowLotSN := NewShowLotSN;
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
}

