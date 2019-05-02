/// @description Insert description here
// You can write your code in this editor

origin_y = y;

timer = 0;

image_speed = 12 / room_speed;

facing = 1;

return_room = 0;

audio_stop_sound(sb_drill);

audio_sound_gain(obj_music.track,0,100);
track_position = audio_sound_get_track_position(obj_music.track)

audio_play_sound(sb_death,0,0);

obj_camera.shake = 5;