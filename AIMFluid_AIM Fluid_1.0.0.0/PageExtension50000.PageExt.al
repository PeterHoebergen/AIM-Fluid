pageextension 50000 PageExtension50000 extends "Company Information"
{
    layout
    {
        addafter("VAT Registration No.")
        {
            field("Registration No.02285";Rec."Registration No.")
            {
                ApplicationArea = All;
            }
        }
    }
}
