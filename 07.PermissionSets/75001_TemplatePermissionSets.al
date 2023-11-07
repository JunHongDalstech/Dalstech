permissionset 75001 TEMPLATE_PS
{
    Assignable = true;
    Permissions = tabledata "Template Setup" = RIMD,
        page "Template Setup" = X,
        codeunit "General Codeunit" = X,
        table "Template Setup" = X,
        report "Template Posted Sales Cr Memo" = X,
        report "Template Posted Sales Invoice" = X,
        report "Template Purchase Order" = X,
        report "Template Sales Delivery Order" = X,
        report "Template Sales Document" = X;
}