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

if (tiro) and instance_exists(oPistolaI) and global.pis_charged = true
{
	var pt = instance_create_layer(oPistolaI.x+5, oPistolaI.y-5, layer, oPistolaMI)
	pt.speed = 8
	pt.direction = oPistolaI.image_angle
	global.pbullets-= 1;
	if (global.pbullets < 1)
	{
		global.pis_charged = false
	}
}
#endregion