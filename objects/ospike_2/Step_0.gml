if (x = Oplayer1.x)
{
    move_towards_point(x, Oplayer1.y, 0.5)
}

if (place_meeting(x - 1, y, osolid))
{
    instance_destroy()
}