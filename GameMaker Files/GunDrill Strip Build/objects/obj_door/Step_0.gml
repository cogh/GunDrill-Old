/// @description Insert description here
// You can write your code in this editor

// Set enter
if place_meeting(x,y,obj_player) 
&& active 
&& !touching_player {
	collision_enter = true;
}

// Set exit
if touching_player 
&& !place_meeting(x,y,obj_player) {
	collision_exit = true;
}

// Enter trigger
if collision_enter {
	obj_room_manager.target_room = target_room;
	obj_room_manager.target_name = target_name;
	obj_room_manager.trigger = true;
	audio_stop_sound(sb_drill);
	audio_stop_sound(sb_boss_roll);
	touching_player = true;
	collision_enter = false;
}

// Exit trigger
if collision_exit {
	touching_player = false;
	collision_exit = false;
}