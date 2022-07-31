if global.weapon == oNull{
	instance_destroy(oPistolaD)
	instance_create_layer(oPlayer.x+35, y, "Instances_1", oPistolaI)
	global.pbullets = global.pbullets
	global.weapon = oPistolaD
	global.weapon2 = oPistolaI
	if global.pbullets > 0{
		global.pis_charged = true
	}
}
else{
	dropWeapon = true
}