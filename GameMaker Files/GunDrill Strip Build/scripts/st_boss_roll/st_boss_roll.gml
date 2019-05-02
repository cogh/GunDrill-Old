/// @description st_boss_roll();
/// @function st_boss_roll

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss_ball;
    // Sprite
    sprite_index = spr_boss_roll;
    image_speed = 6 / room_speed;
    image_index = 4;
    // Audio
    audio_play_sound(sb_boss_roll,0,1);
    // Dir
    dir = get_dir_h(obj_player);
    // Hitbox
    hitbox_active = true;
}
state_timer++;

// Move
if !place_meeting(x+dir*2,y,par_solid) {
    x += dir*2;
}

// Sprite dir
image_xscale = dir;

// On hit
if damage = true {
    audio_play_sound(sb_boss_shell,0,0);
    damage = false;
}

// Bump
if place_meeting(x+(dir*2),y,par_solid) {
    // Audio
    audio_stop_sound(sb_boss_roll);
    scr_state_set("bump");
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
