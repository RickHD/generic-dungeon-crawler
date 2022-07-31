dropWeapon = true
if dropWeapon == true{
	instance_create_layer(x+10, y, layer, global.weapon)
	instance_destroy(global.weapon2)
	global.weapon = oNull
	global.weapon2 = oNull
	dropWeapon = false
}