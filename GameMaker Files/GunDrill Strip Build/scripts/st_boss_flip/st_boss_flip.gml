/// @description st_boss_hit();
/// @function st_boss_hit

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss;
    // Sprite
    sprite_index = spr_boss_flip;
    image_index = 0;
    image_speed = 6 / room_speed;
    // Hitbox
    hitbox_active = false;
}
state_timer++;

// Hurt
if flip = true {
    flip = false;
    audio_play_sound(sb_boss_shell,0,0);
}

// Flipped
if (image_index+image_speed) >= image_number {
    scr_state_set("flipped");
}
