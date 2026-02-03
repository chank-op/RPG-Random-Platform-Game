if (x = Oplayer1.x)
{
    move_towards_point(x, Oplayer1.y, 0.5)
}

if (place_meeting(x, y+1, osolid))
{
    instance_destroy()
}