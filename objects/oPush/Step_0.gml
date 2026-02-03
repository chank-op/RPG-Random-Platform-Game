if (place_meeting(x - 1, y+1, Oplayer1) && keyboard_check(vk_right)) 
{
    x += 1
}
if (place_meeting(x + 1, y+1, Oplayer1) && keyboard_check(vk_left)) 
{
    x -= 1
}

if (place_meeting(x - 1, y+1, Oplayer2) && keyboard_check(vk_right)) 
{
    x += 1
}
if (place_meeting(x + 1, y+1, Oplayer2) && keyboard_check(vk_left)) 
{
    x -= 1
}

if (place_meeting(x, y, osolid))
{
    x = xprevious;
    y = yprevious;
}

if (place_meeting(x, y, oClimb))
{
    x = xprevious;
    y = yprevious;
}

if (place_meeting(x, y+1, osolid) = false)
{
    y += 1
}

if (place_meeting(x, y, Oplayer1))
{
    x = x
}
if (place_meeting(x, y, Oplayer2))
{
    x = x
}


if (place_meeting(x, y, Oplayer1)) && (keyboard_check(vk_right))
{
    Oplayer1.y -= 1
}

else if (place_meeting(x, y, Oplayer1)) && (keyboard_check(vk_left))
{
    Oplayer1.y -= 1
}

if (place_meeting(x, y, Oplayer2)) && (keyboard_check(vk_right))
{
    Oplayer2.y -= 1
}

else if (place_meeting(x, y, Oplayer2)) && (keyboard_check(vk_left))
{
    Oplayer2.y -= 1
}

if (place_meeting(x, y, oClear))
{
    instance_destroy(oGreen)
    instance_destroy(oClear)
}

if (place_meeting(x, y, oClear_1))
{
    instance_destroy(oRed)
    instance_destroy(oClear_1)
}

if (place_meeting(x, y, OGfire))
{
    instance_destroy()
}

if (place_meeting(x, y, oPortal_in))
{
    x = oPortal_out.x
    y = oPortal_out.y
}