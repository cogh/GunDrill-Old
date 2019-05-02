/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player) && active && keyboard_check_pressed(ord("E")) {
	obj_room_manager.target_room = target_room;
	obj_room_manager.target_name = target_name;
	obj_room_manager.trigger = true;
	audio_stop_sound(sb_drill);
	audio_stop_sound(sb_boss_roll);
}