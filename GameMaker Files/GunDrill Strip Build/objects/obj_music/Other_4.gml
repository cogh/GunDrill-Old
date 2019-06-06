/// @description Insert description here
// You can write your code in this editor

if room = r_old_colony_19 {
	audio_stop_all();
}
else if room = r_main_menu {
	track = audio_play_sound(track_oldcolony_western,0,1);
}
else if room = r_old_colony_1 {
	if asset_get_index(audio_get_name(track)) != track_ambient {
		audio_stop_all();
		track = audio_play_sound(track_ambient,0,1);
	}
}
else if room = r_old_colony_21 {
	if asset_get_index(audio_get_name(track)) != track_ambient {
		audio_stop_all();
		track = audio_play_sound(track_starfield_collectables,0,1);
	}
}