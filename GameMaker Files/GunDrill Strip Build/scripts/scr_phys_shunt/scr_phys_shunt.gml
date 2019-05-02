/// @description scr_phys_shunt()
/// @function scr_phys_shunt

// Shunt X
if place_meeting(x+hsp,y,obj_player) {
	while place_meeting(x+hsp,y,obj_player) {
		obj_player.x += sign(hsp);
	}
}

// Shunt Y
if place_meeting(x,y+vsp,obj_player) {
	while place_meeting(x,y+vsp,obj_player) {
		obj_player.y += sign(vsp);
	}
}
