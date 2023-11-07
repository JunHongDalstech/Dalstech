codeunit 51001 "General Codeunit"
{
    var
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
        OnesText: array[20] of Text[30];
        TensText: array[10] of Text[30];
        ExponentText: array[5] of Text[30];
        DescriptionLine: array[2] of Text[80];
        CentText: Text[30];

    procedure GetCompanyAddress(): Text
    var
        CR: Char;
        LF: Char;
        CompInfo: Record "Company Information";
        CountryRegion: Record "Country/Region";
        CompAddress: Text;
    begin
        CompInfo.Get;
        Clear(CompAddress);
        CR := 13;
        LF := 10;
        CompAddress := CompInfo.Address;
        if CompInfo."Address 2" <> '' then
            CompAddress := CompAddress + ' ' + CompInfo."Address 2";
        if CompInfo.County <> '' then
            CompAddress := CompAddress + ' ' + CompInfo.County;
        if CompInfo."Country/Region Code" <> '' then begin
            CountryRegion.Reset;
            if CountryRegion.get(CompInfo."Country/Region Code") then
                CompAddress := CompAddress + ' ' + CountryRegion.Name + ' ' + CompInfo."Post Code";
        end;
        if CompInfo."Phone No." <> '' then
            CompAddress := CompAddress + ' | Tel No. : ' + CompInfo."Phone No.";
        if CompInfo."Fax No." <> '' then
            CompAddress := CompAddress + ' | Fax No. : ' + CompInfo."Fax No.";

        CompAddress := CompAddress + Format(CR) + Format(LF);

        if CompInfo."Home Page" <> '' then
            CompAddress := CompAddress + 'Website : ' + CompInfo."Home Page" + ' | ';

        if CompInfo."VAT Registration No." <> '' then
            CompAddress := CompAddress + 'Company & GST Reg.No.: ' + CompInfo."VAT Registration No.";

        exit(CompAddress);
    end;

    procedure GetPleaseTransferText(ParCurrCode: Code[20]; ParAmount: Decimal): Text
    var
        RetValueText: Text;
    begin
        RetValueText := 'Please remit by T.T. ' + ParCurrCode + '  ' + FORMAT(ParAmount, 0, '<Precision,2:2><Standard Format,0>') + ' (free of bank charges) to the following bank account : ';
        Exit(RetValueText);
    end;

    procedure GetGSTPurposeText(ParTableID: Integer;
            ParDocType: Integer;
            ParDocNo: Code[20]):
            Text
    var
        ReturnValueText: Text;
        AmountExclGSTTCY: Decimal;
        GSTAmtTCY: Decimal;
        AmountInclGSTTCY: Decimal;
        OriginalVATAmount: Decimal;
        TotalVATDifference: Decimal;
        ExchangeRate: Decimal;
        AdvancePayment: Decimal;
        SalesHeader: Record "Sales Header";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        PurchHeader: Record "Purchase Header";
        PurchInvHeader: Record "Purch. Inv. Header";
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        ServiceHeader: Record "Service Header";
        ServInvHeader: Record "Service Invoice Header";
        ServCrMemoHeader: Record "Service Cr.Memo Header";
        CR: Char;
        LF: Char;
        SGSetup: Record DALS_01TabSGLocalizationSetup;
    begin
        SGSetup.Get;
        CR := 13;
        LF := 10;
        Clear(ReturnValueText);
        AdvancePayment := 0;
        //NEW
        CASE ParTableID of
            36:
                begin
                    SalesHeader.Reset;
                    if SalesHeader.Get(ParDocType, ParDocNo) then BEGIN
                        ExchangeRate := ROUND(SalesHeader."DALS Exchange Rate (TCY)", 0.000001, '=');
                        OriginalVATAmount := SalesHeader.GetOriginalVATAmount(SalesHeader."Document Type".AsInteger(), SalesHeader."No.");
                        if SalesHeader."Prices Including VAT" = true then begin
                            AmountInclGSTTCY := SalesHeader.GetAmountTCY(SalesHeader."Document Type".AsInteger(), SalesHeader."No.", True);
                            AmountExclGSTTCY := AmountInclGSTTCY - (OriginalVATAmount * SalesHeader."DALS Exchange Rate (TCY)") - SalesHeader."DALS GST Difference (TCY)";
                            GSTAmtTCY := AmountInclGSTTCY - AmountExclGSTTCY;
                        end
                        else begin
                            AmountExclGSTTCY := SalesHeader.GetAmountTCY(SalesHeader."Document Type".AsInteger(), SalesHeader."No.", False);
                            AmountInclGSTTCY := AmountExclGSTTCY + (OriginalVATAmount * SalesHeader."DALS Exchange Rate (TCY)") + SalesHeader."DALS GST Difference (TCY)";
                            GSTAmtTCY := AmountInclGSTTCY - AmountExclGSTTCY;
                        end;
                    END;
                end;
            112:
                begin
                    SalesInvHeader.Reset;
                    if SalesInvHeader.Get(ParDocNo) then BEGIN
                        SalesInvHeader.CalcFields(SalesInvHeader.Amount, SalesInvHeader."Amount Including VAT");
                        ExchangeRate := ROUND(SalesInvHeader."DALS Exchange Rate (TCY)", 0.000001, '=');
                        AmountExclGSTTCY := ROUND(SalesInvHeader."DALS Exchange Rate (TCY)" * SalesInvHeader.Amount, 0.01, '=');
                        AmountInclGSTTCY := ROUND(SalesInvHeader."DALS Exchange Rate (TCY)" * SalesInvHeader."Amount Including VAT", 0.01, '=');
                        OriginalVATAmount := SalesInvHeader.GetTotalSalesVATAmount(SalesInvHeader."No.");
                        TotalVATDifference := SalesInvHeader.GetTotalVATDifference(SalesInvHeader."No.");
                        GSTAmtTCY := (OriginalVATAmount * SalesInvHeader."DALS Exchange Rate (TCY)") + SalesInvHeader."DALS GST Difference (TCY)";
                    END;
                end;

            114:
                begin
                    SalesCrMemoHeader.Reset;
                    if SalesCrMemoHeader.Get(ParDocNo) then BEGIN
                        SalesCrMemoHeader.CalcFields(SalesCrMemoHeader.Amount, SalesCrMemoHeader."Amount Including VAT");
                        ExchangeRate := ROUND(SalesCrMemoHeader."DALS Exchange Rate (TCY)", 0.000001, '=');
                        AmountExclGSTTCY := ROUND(SalesCrMemoHeader."DALS Exchange Rate (TCY)" * SalesCrMemoHeader.Amount, 0.01, '=');
                        AmountInclGSTTCY := ROUND(SalesCrMemoHeader."DALS Exchange Rate (TCY)" * SalesCrMemoHeader."Amount Including VAT", 0.01, '=');

                        OriginalVATAmount := SalesCrMemoHeader.GetTotalSalesVATAmount(SalesCrMemoHeader."No.");
                        TotalVATDifference := SalesCrMemoHeader.GetTotalVATDifference(SalesCrMemoHeader."No.");
                        GSTAmtTCY := (OriginalVATAmount * SalesCrMemoHeader."DALS Exchange Rate (TCY)") + SalesCrMemoHeader."DALS GST Difference (TCY)";
                    END;
                end;
        end;

        ReturnValueText := 'Exchange Rate = ' + FORMAT(ExchangeRate, 0, '<Precision,6:6><Standard Format,0>') +
        '; Taxable Amt = ' + SGSetup."DALS TCY Code" + ' ' + Format(ROUND(AmountExclGSTTCY, 0.01, '='), 0, '<Precision,2:2><Standard Format,0>') +
        '; GST = ' + SGSetup."DALS TCY Code" + ' ' + Format(ROUND(GSTAmtTCY, 0.01, '='), 0, '<Precision,2:2><Standard Format,0>') +
        '; Total = ' + SGSetup."DALS TCY Code" + ' ' + Format(ROUND(AmountInclGSTTCY, 0.01, '='), 0, '<Precision,2:2><Standard Format,0>');
        exit(ReturnValueText);
    end;

    procedure CheckIsNumeric(ParText: Text): Boolean;
    var
        CheckDecimal: Decimal;
        IsNumeric: Boolean;
    begin
        IsNumeric := Evaluate(CheckDecimal, ParText);
        Exit(IsNumeric);
    end;

    procedure ConvertToNumeric(ParText: Text): Decimal;
    var
        CheckDecimal: Decimal;
        IsNumeric: Boolean;
    begin
        IsNumeric := Evaluate(CheckDecimal, ParText);
        if IsNumeric = true then
            exit(CheckDecimal)
        else
            exit(0);
    end;

    procedure GetBankDetails(ParBankCode: Code[20]; ParIsValue: Boolean): Text
    var
        RetValue: Text;
        RetText: Text;
        BankAccount: Record "Bank Account";
        CompInfo: Record "Company Information";
        CR: Char;
        LF: Char;
    begin
        CR := 13;
        LF := 10;
        CompInfo.get;
        Clear(RetValue);
        if BankAccount.get(ParBankCode) then begin
            if BankAccount."Address 2" = '' then begin
                RetValue := ':  ' + CompInfo.Name + CompInfo."Name 2" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount.Name + BankAccount."Name 2" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount.Address + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Country/Region Code" + ' ' + BankAccount."Post Code" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Bank Account No." + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Bank Branch No." + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."SWIFT Code";

                RetText := 'Payable To' + Format(CR) + Format(LF) +
                            'Bank Name' + Format(CR) + Format(LF) +
                            'Bank Address' + Format(CR) + Format(LF) +
                            '   ' + Format(CR) + Format(LF) +
                            'Bank Account No.' + Format(CR) + Format(LF) +
                            'Bank Branch No.' + Format(CR) + Format(LF) +
                            'Swift Code';
            end
            else begin
                RetValue := ':  ' + CompInfo.Name + CompInfo."Name 2" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount.Name + BankAccount."Name 2" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount.Address + Format(CR) + Format(LF) +
                            '   ' + BankAccount."Address 2" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Country/Region Code" + ' ' + BankAccount."Post Code" + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Bank Account No." + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."Bank Branch No." + Format(CR) + Format(LF) +
                            ':  ' + BankAccount."SWIFT Code";

                RetText := 'Payable To' + Format(CR) + Format(LF) +
                            'Bank Name' + Format(CR) + Format(LF) +
                            'Bank Address' + Format(CR) + Format(LF) +
                            '   ' + Format(CR) + Format(LF) +
                            '   ' + Format(CR) + Format(LF) +
                            'Bank Account No.' + Format(CR) + Format(LF) +
                            'Bank Branch No.' + Format(CR) + Format(LF) +
                            'Swift Code';
            end;
        end;
        if ParIsValue = true then
            exit(RetValue)
        else
            exit(RetText);
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

    local procedure AddToNoText(var NoText: array[2] of Text; var NoTextIndex: Integer; var PrintExponent: Boolean; AddText: Text[30]);
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

    procedure GetLineAdditionalInfo(ParTableID: Integer; ParDocNo: Code[20]; ParLineNo: Integer): Text
    var
        RetValue: Text;
        ReservationEntry:
                Record "Reservation Entry";
        AssembletoOrderLink:
                Record "Assemble-to-Order Link";
        AssemblyLine:
                Record "Assembly Line";
        ValueEntry:
                Record "Value Entry";
        ItemLedgerEntry:
                Record "Item Ledger Entry";
        ILE:
                Record "Item Ledger Entry";
        PostedAssembletoOrderLink:
                Record "Posted Assemble-to-Order Link";
        PostedAssemblyLine:
                Record "Posted Assembly Line";
        CR:
                Char;
        LF:
                Char;
    begin
        CR := 13;
        LF := 10;
        Clear(RetValue);
        CASE ParTableID of
            37:
                begin
                    //Lot No. Main Item
                    ReservationEntry.Reset;
                    ReservationEntry.Setrange(ReservationEntry."Source Type", ParTableID);
                    ReservationEntry.Setrange(ReservationEntry."Source ID", ParDocNo);
                    ReservationEntry.Setrange(ReservationEntry."Source Ref. No.", ParLineNo);
                    ReservationEntry.Setrange(ReservationEntry.Positive, False);
                    ReservationEntry.SetFilter(ReservationEntry."Lot No.", '<>%1', '');
                    if ReservationEntry.findset then begin
                        RetValue := RetValue + Format(CR) + Format(LF) + 'Lot No : ';
                        repeat
                            if ReservationEntry."Lot No." <> '' then
                                RetValue := RetValue + ReservationEntry."Lot No." + ',';
                        until ReservationEntry.next = 0;
                        if RetValue <> '' then
                            RetValue := CopyStr(RetValue, 1, StrLen(RetValue) - 1);
                    end;
                end;

            111:
                begin
                    //Lot No. Main Item
                    ItemLedgerEntry.Reset;
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Entry Type", ItemLedgerEntry."Entry Type"::Sale);
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document Type", ItemLedgerEntry."Document Type"::"Sales Shipment");
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document No.", ParDocNo);
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document Line No.", ParLineNo);
                    ItemLedgerEntry.SetFilter(ItemLedgerEntry."Lot No.", '<>%1', '');
                    if ItemLedgerEntry.findset then begin
                        RetValue := RetValue + Format(CR) + Format(LF) + 'Lot No : ';
                        repeat
                            if ItemLedgerEntry."Lot No." <> '' then
                                RetValue := RetValue + ItemLedgerEntry."Lot No." + ',';
                        until ItemLedgerEntry.next = 0;
                        if RetValue <> '' then
                            RetValue := CopyStr(RetValue, 1, StrLen(RetValue) - 1);
                    end;
                end;
            113:
                begin
                    //Lot No. Main Item
                    ValueEntry.RESET;
                    ValueEntry.SETRANGE(ValueEntry."Document No.", ParDocNo);
                    ValueEntry.SETRANGE(ValueEntry."Document Line No.", ParLineNo);
                    ValueEntry.Setfilter(ValueEntry."Invoiced Quantity", '<>%1', 0);
                    IF ValueEntry.FINDSET THEN BEGIN
                        repeat
                            ItemLedgerEntry.Reset;
                            ItemLedgerEntry.Setrange(ItemLedgerEntry."Document Type", ItemLedgerEntry."Document Type"::"Sales Shipment");
                            ItemLedgerEntry.Setrange(ItemLedgerEntry."Entry No.", ValueEntry."Item Ledger Entry No.");
                            ItemLedgerEntry.SetFilter(ItemLedgerEntry."Lot No.", '<>%1', '');
                            IF ItemLedgerEntry.findset THEN BEGIN
                                repeat
                                    RetValue := RetValue + ItemLedgerEntry."Lot No." + ',';
                                until ItemLedgerEntry.next = 0;
                            end;
                        until ValueEntry.next = 0;

                        if RetValue <> '' then begin
                            RetValue := Format(CR) + Format(LF) + 'Lot No : ' + RetValue;
                            RetValue := CopyStr(RetValue, 1, StrLen(RetValue) - 1);
                        end;
                    end;

                end;
            115:
                begin
                    //Lot No. Main Item
                    ItemLedgerEntry.Reset;
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Entry Type", ItemLedgerEntry."Entry Type"::Sale);
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document Type", ItemLedgerEntry."Document Type"::"Sales Credit Memo");
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document No.", ParDocNo);
                    ItemLedgerEntry.Setrange(ItemLedgerEntry."Document Line No.", ParLineNo);
                    ItemLedgerEntry.SetFilter(ItemLedgerEntry."Lot No.", '<>%1', '');
                    if ItemLedgerEntry.findset then begin
                        RetValue := RetValue + Format(CR) + Format(LF) + 'Lot No : ';
                        repeat
                            if ItemLedgerEntry."Lot No." <> '' then
                                RetValue := RetValue + ItemLedgerEntry."Lot No." + ',';
                        until ItemLedgerEntry.next = 0;
                        if RetValue <> '' then
                            RetValue := CopyStr(RetValue, 1, StrLen(RetValue) - 1);
                    end;
                end;
        end;
        exit(RetValue);
    end;
}