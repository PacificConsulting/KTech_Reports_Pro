page 50028 "Application For Customer"
{
    // version PCPL-25

    CaptionML = ENU = 'Application For Customer',
                ENN = 'Application For Customer';
    PageType = List;
    SourceTable = 50013;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = all;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
    }
}

