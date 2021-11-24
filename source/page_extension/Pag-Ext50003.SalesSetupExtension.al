pageextension 50003 "Sales Setup Extension" extends "Sales & Receivables Setup"
{
    layout
    {
        addafter("Calc. Inv. Discount")
        {
            field("Margin control rate"; "Margin control rate")
            {
                ApplicationArea = All;
            }
        }
    }
}
