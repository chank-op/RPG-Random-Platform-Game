if (place_meeting(x, y+1, osolid_b))
{
    ysp = 0
}
else if (place_meeting(x, y+1, oPush))
{
    ysp = 0
}
else
{
    ysp += 0.05
}
xsp = 0


window_set_fullscreen(true)

if (keyboard_check(vk_left))
{
    xsp = -1
}

if (keyboard_check(vk_right))
{
    xsp = +1
}

if (place_meeting(x, y+1, osolid))
{
    ysp = 0
    if (keyboard_check (vk_up))
    {
        ysp = ysp - 1.5
    }
    else if (keyboard_check (ord("Z")))
    {
        ysp = ysp - 1.5
    }
}

if (place_meeting(x, y+1, oPush))
{
    ysp = 0
    if (keyboard_check (vk_up))
    {
        ysp = ysp - 1.5
    }
    
    else  if (keyboard_check (ord("Z")))
    {
        ysp = ysp - 1.5
    }
}

if (place_meeting(x, y+1, oClimb))
{
    ysp = 0
    
    if (keyboard_check (vk_up))
    {
        ysp = ysp - 1.5
    }
    else if (keyboard_check (ord("Z")))
{
    ysp = ysp - 1.5
}
}




if (place_meeting(x, y, osolid))
{
	if (distance_to_object(oRail_y) <= 60)
	{
		y -= 1
	}
	else
	{
		y += 1
	}
}

if (place_meeting(x, y, oSticky))
{
    ysp = 0
    
    if (keyboard_check(vk_up))
    {
        ysp = ysp - 2
    }
    if (keyboard_check(ord("Z")))
    {
        ysp = ysp - 2
    }
}

move_and_collide(xsp, ysp, osolid)

if (place_meeting(x, y, Oflag))
{
    room_goto_next()
	
}

if (place_meeting(x, y, ospike))
{
    room_restart()
}

if (place_meeting(x, y, OGfire))
{
    room_restart()
}

if (place_meeting(x, y, oSpeed))
{
    instance_destroy(oSpeed)
    speedy = true
    alarm[0] = 600
}

if (place_meeting(x, y, oBouncer))
{
    ysp = 0
	ysp = ysp - 3.5
    move_and_collide(x, y, oBouncer)
}


if (place_meeting(x, y, Oboots_fall))
{
    fall_slow = true
    alarm[0] = 600
    instance_destroy(Oboots_fall)
}

if (place_meeting(x, y, Oboots_fall_1))
{
    fall_slow = true
    alarm[0] = 600
    instance_destroy(Oboots_fall_1)
}

if (fall_slow = true)
{
    ysp = ysp * 0.5
}

if (place_meeting(x, y, oFish))
{
    instance_destroy(oFish)
    fish = true
}

if (fish = true)
{
    sprite_index = sFish
}

if (keyboard_check_pressed(vk_escape))
{
    room_restart()
}

if (place_meeting(x, y, oGreen))
{
    room_restart()
}

if (place_meeting(x, y, oClear))
{
    instance_destroy(oGreen)
    instance_destroy(oClear)
    if (instance_exists(oClear_1))
{
    oRed.sprite_index = sRed
    oClear_1.sprite_index = sClear_1
}
}
if (speedy = true)
{
    xsp *= 2
}

if (place_meeting(x, y+1, osolid_b)) && (osolid_b.sprite_index = sSolid_b)
{
    ysp = 0
    alarm[3] = 120
    if (keyboard_check (vk_up))
    {
        ysp = ysp - 2
    }
    move_and_collide(xsp, ysp, osolid_b)
}

if (place_meeting(x, y, osolid_b))
{
    y =+ 1
}

if (place_meeting(x, y, oPush))
{
    ysp -= 0.1
}

if (place_meeting(x, y, oClear_1)) && (oRed.sprite_index = sRed) && (oClear_1.sprite_index = sClear_1)
{
    instance_destroy(oRed)
    instance_destroy(oClear_1)
}

if (place_meeting(x, y, oRed)) && (oRed.sprite_index = sRed)
{
    room_restart()
}

if (place_meeting(x, y, oPortal_in))
{
    x = oPortal_out.x
    y = oPortal_out.y
}

if (place_meeting(x, y, oShooter))
{
    room_restart()
}
if (place_meeting(x, y, Ofire_y))
{
	room_restart()
}

if (keyboard_check(vk_space))
{
    game_restart()
}

if (place_meeting(x, y, oAbility_clear))
{
	fall_slow = false
	speedy = false
	instance_destroy(oAbility_clear)
}

if (keyboard_check_pressed(vk_alt))
{
	window_set_fullscreen(true)
}

if (keyboard_check_pressed(ord("2")))
{
	room_goto(Room21)
}