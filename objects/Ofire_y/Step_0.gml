move_towards_point(x, y +300, 0.5)

if (place_meeting(x, y, osolid))
{
    instance_destroy()
}

if (place_meeting(x, y, Oplayer1))
{
    room_restart()
}