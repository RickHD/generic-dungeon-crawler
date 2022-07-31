
#region Mov
if (!keyboard_check(ord("D"))) or (!keyboard_check(ord("A"))) or (!keyboard_check(ord("W"))) or (!keyboard_check(ord("S"))){
sprite_index = sPlayerIdle
}

if keyboard_check(ord("W"))
{
	y-= spd
	sprite_index = sPlayerBackWalk
}

if keyboard_check(ord("S"))
{
	y+= spd
	sprite_index = sPlayerFrontWalk
}

if keyboard_check(ord("A"))
{
	x-= spd
	sprite_index = sPlayerWalk
	image_xscale = -1
}

if keyboard_check(ord("D"))
{
	x+= spd
	sprite_index = sPlayerWalk
	image_xscale = 1
}
#endregion

if keyboard_check_pressed(ord("R"))
{
	room_restart()
}