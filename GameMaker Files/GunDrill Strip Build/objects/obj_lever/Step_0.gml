/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_shot) && timer <= 0 && obj_elevator.state = "idle" {
	if image_index = 0 { image_index = 1; }
	else { image_index = 0; }
	obj_elevator.trigger = true;
	timer = 0.1;
	audio_play_sound(sb_ore_bounce,0,0);
}

timer -= 1/room_speed;