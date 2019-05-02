/// @description st_boss_bump();
/// @function st_boss_bump

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss_ball;
    // Sprite
    sprite_index = spr_boss_bump;
    image_speed = 12 / room_speed;
    image_index = 0;
    // Sound
    audio_play_sound(sb_boss_bump,0,0);
    // Screenshake
    obj_camera.shake_trigger = true;
    // Hitbox
    hitbox_active = true;
}
state_timer++;

// On hit
if damage = true {
    audio_play_sound(sb_boss_shell,0,0);
    damage = false;
}

// Idle
if (image_index+image_speed) >= image_number {
    scr_state_set("return");
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
