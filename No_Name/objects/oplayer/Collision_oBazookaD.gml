if global.weapon == oNull{
	instance_destroy(oBazookaD)
	instance_create_layer(oPlayer.x+35, y, "Instances_1", oBazookaI)
	global.bbullets = global.bbullets
	global.weapon = oBazookaD
	global.weapon2 = oBazookaI
	if global.bbullets > 0{
		global.is_charged = true
	}
}
else{
	dropWeapon = true
}