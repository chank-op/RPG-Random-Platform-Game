if (place_meeting(x, y, oRail))
{
    move_towards_point(x + 16, y, 0.5)
    alarm[0] = 60
}

if (place_meeting(x, y, oRail_y))
{
    move_towards_point(x, y+16, 0.5)
    alarm[1] = 60
}