/// @description st_boss_return();
/// @function st_boss_return

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss_ball;
    // Sprite
    sprite_index = spr_boss_roll;
    image_speed = 4 / room_speed;
    // Dir
    dir = sign(origin_x-x);
    // Hitbox
    hitbox_active = true;
}
state_timer++;

// Move
if !place_meeting(x+dir,y,par_solid) {
    x += dir;
}

// Sprite dir
image_xscale = dir;

// On hit
if damage = true {
    audio_play_sound(sb_boss_shell,0,0);
    damage = false;
}

// Idle
if point_distance(x,0,origin_x,0) < 3 {
    x = origin_x;
    scr_state_set("idle");
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
