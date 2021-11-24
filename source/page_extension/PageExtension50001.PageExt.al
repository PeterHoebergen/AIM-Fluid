/// <summary>
/// PageExtension PageExtension50001 (ID 50001) extends Record Item Card.
/// </summary>
pageextension 50001 PageExtension50001 extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("Description 239774";Rec."Description 2")
            {
                ApplicationArea = All;
            }
        }
    }
}
