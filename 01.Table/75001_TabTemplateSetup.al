table 75001 "Template Setup"
{
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            //Stanley added this 
            DataClassification = AccountData;
        }
        Field(20; "Sales Quote Terms"; Text[2000])
        {
            DataClassification = AccountData;
        }
        Field(30; "Sales Order Terms"; Text[2000])
        {
            DataClassification = AccountData;
        }
        Field(40; "Sales Invoice Terms"; Text[2000])
        {
            DataClassification = AccountData;
        }
        Field(50; "Purchase Order Terms"; Text[2000])
        {
            DataClassification = AccountData;
        }
        //Comment yurou
    }

    keys
    {
        key(Key1; "Primary Key")
        {
        }
    }

    fieldgroups
    {
    }


    procedure BasicSetup()
    var
        ReportSelections: Record "Report Selections";
        CompInfo: Record "Company Information";
    begin
        //Report Selection
        //Purchase Order
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"P.Order", '1') then begin
            ReportSelections."Report ID" := 50012;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"P.Order";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50012;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;

        //Sales Quote
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"S.Quote", '1') then begin
            ReportSelections."Report ID" := 50003;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"S.Quote";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50003;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;

        //Sales Order
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"S.Order", '1') then begin
            ReportSelections."Report ID" := 50003;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"S.Order";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50003;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;

        //Posted Sales Shipment
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"S.Shipment", '1') then begin
            ReportSelections."Report ID" := 50006;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"S.Shipment";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50006;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;

        //Posted Sales Invoice
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"S.Invoice", '1') then begin
            ReportSelections."Report ID" := 50007;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"S.Invoice";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50007;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;

        //Posted Sales Credit Memo
        ReportSelections.reset;
        if ReportSelections.get(ReportSelections.Usage::"S.Cr.Memo", '1') then begin
            ReportSelections."Report ID" := 50008;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Modify;
        end
        else begin
            ReportSelections.Usage := ReportSelections.Usage::"S.Cr.Memo";
            ReportSelections.Sequence := '1';
            ReportSelections."Report ID" := 50008;
            ReportSelections."Use for Email Attachment" := true;
            ReportSelections."Email Body Layout Type" := ReportSelections."Email Body Layout Type"::"Custom Report Layout";
            ReportSelections.Insert;
        end;
        Message('Basic Setup Done !');
    end;
}

