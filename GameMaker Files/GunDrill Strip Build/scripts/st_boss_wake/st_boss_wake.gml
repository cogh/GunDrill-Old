/// @description st_boss_wake();
/// @function st_boss_wake

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss;
    // Sprite
    sprite_index = spr_boss_wake;
    image_speed = 6 / room_speed;
    image_index = 0;
    // Hitbox
    hitbox_active = false;
}
state_timer++;

// On hit
if damage = true {
    //audio_play_sound(sb_boss_shell,0,0);
    damage = false;
}

// Idle
if (image_index+image_speed) >= image_number {
    scr_state_set("idle");
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
