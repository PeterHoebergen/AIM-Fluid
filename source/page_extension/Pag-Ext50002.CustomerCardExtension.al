pageextension 50002 "Customer Card Extension" extends "Customer Card"
{
    layout
    {
        addafter("Allow Line Disc.")
        {
            field("Margin control rate";"Margin control rate")
            {
                ApplicationArea = All;
            }
        }
    }
}
