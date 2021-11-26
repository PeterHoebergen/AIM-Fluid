pageextension 50005 "Sales Header Extension" extends "Sales Order"
{
    layout
    {
        addafter(Status)
        {
            field("Margin Exceeded"; "Margin Exceeded")
            {
                Caption = 'Margin Exceeded';
                ApplicationArea = all;
                Style = Unfavorable;
                StyleExpr = "Margin Exceeded";
            }
        }

    }
}