tableextension 50002 "Sales Order Line Extension" extends "37"
{
    fields
    {
        field(50000; "Margin Exceeded"; Boolean)
        {
            Caption = 'Margin Exceeded';
            DataClassification = ToBeClassified;
        }
    }
    trigger OnBeforeModify()
    var
        Cust: Record Customer;
        Margin: Decimal;
        SalesSetup: Record "Sales & Receivables Setup";
    begin
        IF Cust.GET("Sell-to Customer No.") THEN;

        Margin := SalesSetup."Margin control rate";
        IF Cust."Margin control rate" <> 0 THEN
            Margin := Cust."Margin control rate";
        IF Margin <> 0 THEN BEGIN
            IF ("Unit Cost" * "Quantity (Base)") > 0 THEN begin
                IF (100 - (("Unit Cost" * "Quantity (Base)") / ("Line Amount" + 0.00000001) * 100)) < Margin THEN
                    "Margin Exceeded" := TRUE
                ELSE
                    "Margin Exceeded" := FALSE;
            end;
        END;
    END;    
}
