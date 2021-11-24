pageextension 50004 "Sales Line Page Extension" extends "Sales Order Subform"
{
    layout
    {
        modify(Description)
        {
            Style = Unfavorable;
            StyleExpr = SetColor;
        }
        modify("Unit Price")
        {
            Style = Unfavorable;
            StyleExpr = SetColor;
        }
    }
    var
        SetColor: Boolean;

    trigger OnAfterGetRecord()
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
            IF ("Unit Cost" * "Quantity (Base)") > 0 THEN
                //IF (Amount - ("Unit Cost" * "Quantity (Base)") / ("Unit Cost" * "Quantity (Base)") * 100) < Margin THEN
                IF (100 - (("Unit Cost" * "Quantity (Base)") / ("Line Amount" + 0.00000001) * 100)) < Margin THEN
                    SetColor := TRUE
                ELSE
                    SetColor := FALSE
        END;
    END;
}
