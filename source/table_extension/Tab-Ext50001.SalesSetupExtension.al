tableextension 50001 "Sales Setup Extension" extends "Sales & Receivables Setup"
{
    fields
    {
        field(50000; "Margin control rate"; Decimal)
        {
            Caption = 'Margin control rate';
            DataClassification = ToBeClassified;
        }
    }
}
