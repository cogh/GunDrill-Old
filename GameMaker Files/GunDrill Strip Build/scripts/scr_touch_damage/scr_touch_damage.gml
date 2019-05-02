/// @description scr_touch_damage()
/// @function scr_touch_damage

// Subtract health
if place_meeting(x,y,obj_player) {
	obj_player.hit = true;
}
