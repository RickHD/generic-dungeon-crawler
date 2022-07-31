if global.is_charged = true and global.bbullets > 0
{
	sprite_index = sBazooka
}

if global.is_charged = false or global.bbullets < 1
{
	sprite_index = sBazookaF
}

mp_potential_step(oPlayer.x, oPlayer.y+3, 5, false)
image_angle = point_direction(x, y, mouse_x, mouse_y);

if mouse_x < oPlayer.x{
	image_yscale = -1
}
else{
	image_yscale = 1
}
#region Tiro

var  tiro = mouse_check_button_pressed(mb_left)

if (tiro) and instance_exists(oBazookaI) and global.is_charged = true and oBazookaI.sprite_index = sBazooka
{
	var t = instance_create_layer(oBazookaI.x+5, oBazookaI.y-5, layer, oBazookaMI)
	t.speed = 7
	t.direction = oBazookaI.image_angle
	global.is_charged = false
	global.bbullets -= 1
}
#endregion