/// @description st_gun_active()
/// @function st_gun_active
if gun_state_timer = 0 {
    gun_shot_timer = 1;
}
gun_state_timer++;

// Find position
var shot_x = scr_gun_xoffset();
var shot_y = scr_gun_yoffset();

// Sprite
scr_gun_sprite();

// Shoot
gun_shot_timer -= 1;
if gun_shot_timer <= 0 {
	audio_sound_pitch(sb_shoot,random_range(0.9,1.1));
    audio_play_sound(sb_shoot,0,false);
    var shot = instance_create(x+shot_x,y+shot_y,obj_shot);
    shot.dir = angle_to_360(gun_dir,facing);
    gun_shot_timer = 5;
	//obj_camera.shake = 1;
}

// Transitions
if !inp_shoot 
or (grounded && gun_dir = 270) {
    gun_state = st_gun_idle;
    gun_state_timer = 0;
}
