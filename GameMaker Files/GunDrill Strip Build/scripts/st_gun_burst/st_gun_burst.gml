/// @description st_gun_burst()
/// @function st_gun_burst
if gun_state_timer = 0 {
    audio_play_sound(sb_burst,0,0);
    shot_x = scr_gun_xoffset();
    shot_y = scr_gun_yoffset();
    burst_particle = instance_create(x+shot_x,y+shot_y,obj_burst_particle);
    burst_particle.image_angle = gun_dir;
    if gun_dir = 0 { burst_particle.image_xscale = facing; }
    
    // Move
    if gun_dir = 0 || gun_dir = 180 {
        hsp = -sign(facing)*lengthdir_x(3,gun_dir);
    }
    if gun_dir = 90 || gun_dir = 270 {
        vsp = -lengthdir_y(3,gun_dir);
    }
}
gun_state_timer++;

// Find position
//shot_x = scr_gun_xoffset();
//shot_y = scr_gun_yoffset();

// Sprite
scr_gun_sprite();

// Burst

// Transitions
if !instance_exists(burst_particle) {
    if inp_drill {
        gun_state = st_gun_drill;
        gun_state_timer = 0;
    }
    else if inp_shoot {
        gun_state = st_gun_shoot;
        gun_state_timer = 0;
    }
    else {
        gun_state = st_gun_idle;
        gun_state_timer = 0;
    }
}
