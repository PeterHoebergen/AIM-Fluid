tableextension 50003 "Sales Header Extension" extends "Sales Header"
{
    fields
    {
        field(50000; "Margin Exceeded"; Boolean)
        {
            Caption = 'Margin Exceeded';
            FieldClass = FlowField;
            //CalcFormula = Exist("sales line") WHERE("Document No." = FIELD("No."), "Document Type" = FIELD("Document Type")));
            CalcFormula = exist("Sales Line" where("Margin Exceeded" = const(true), "Document No." = FIELD("No."), "Document Type" = FIELD("Document Type")));
        }
    }
}
