page 75001 "Template Setup"
{
    PageType = Card;
    SourceTable = "Template Setup";
    UsageCategory = Administration;
    ApplicationArea = All;
    LinksAllowed = false;
    DeleteAllowed = false;
    Permissions = TableData 17 = rm,
                  TableData 254 = rm,
                  TableData 21 = rm,
                  TableData 25 = rm,
                  TableData 32 = rm,
                  TableData 36 = rm,
                  TableData 37 = rm,
                  TableData 38 = rm,
                  TableData 39 = rm,
                  TableData 112 = rm,
                  TableData 113 = rm,
                  TableData 114 = rm,
                  TableData 115 = rm,
                  TableData 122 = rm,
                  TableData 123 = rm,
                  TableData 124 = rm,
                  TableData 125 = rm,
                  TableData 5802 = rm;

    layout
    {
        area(content)
        {
            group("Sales Quote")
            {
                field("Sales Quote Terms"; Rec."Sales Quote Terms")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = False;
                }
            }
            group("Sales Order")
            {
                field("Sales Order Terms"; Rec."Sales Order Terms")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = False;
                }
            }
            group("Sales Invoice")
            {
                field("Sales Invoice Terms"; Rec."Sales Invoice Terms")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = False;
                }
            }
            group("Purchase Order")
            {
                field("Purchase Order Terms"; Rec."Purchase Order Terms")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ShowCaption = False;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Basic Setup")
            {
                ApplicationArea = all;
                Image = Setup;
                Promoted = true;

                trigger OnAction()
                begin
                    Rec.BasicSetup();
                end;
            }
        }
    }

    trigger OnOpenPage();
    begin
        Rec.RESET;
        if not Rec.GET then begin
            Rec.INIT;
            Rec.INSERT;
        end;
    end;


}
