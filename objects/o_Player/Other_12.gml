/// @description Drop Equipped Weapon
// ---------------------------------------------------------------------------------
dropped = true;
alarm[3] = room_speed/4;
var drop_ammo = equipped[? "ammo_res"];
var drop_mag = equipped[? "ammo_mag"];
var xscale = image_xscale;
with(scr_Player_Drop_Weapon(equipped[? "type"])){
	image_xscale = xscale;
	ammo_res = drop_ammo;
	ammo_mag = drop_mag;
}
scr_Player_Reset_Equipped();
