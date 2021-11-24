tableextension 50000 "Customer Table Extension" extends Customer
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
