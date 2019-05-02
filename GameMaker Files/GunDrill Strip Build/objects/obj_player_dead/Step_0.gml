/// @description Insert description here
// You can write your code in this editor

if room != r_dead {
	room_goto(r_dead);
}

if instance_exists(obj_player) {
	instance_destroy(obj_player);
}

vsp += 0.04;

hsp *= 0.98;
vsp *= 0.98;

if y >= origin_y+1 {
	timer++;
}
else {
	x += hsp;
	y += vsp;
}

if timer >= 120 {
	audio_sound_set_track_position(obj_music.track,track_position)
	audio_sound_gain(obj_music.track,1,2000);
	room_goto(return_room);
	instance_destroy();
}