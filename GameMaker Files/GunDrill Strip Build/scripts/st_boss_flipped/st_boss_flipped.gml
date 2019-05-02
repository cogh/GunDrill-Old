/// @description st_boss_flipped();
/// @function st_boss_flipped

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss;
    // Sprite
    sprite_index = spr_boss_flipped;
    image_index = 0;
    // Hitbox
    hitbox_active = false;
}
state_timer++;

// Get up
if state_timer = 120 {
    scr_state_set("wake");
}

// Hurt
if flip = true {
    flip = false;
    hp -= 100;
    obj_camera.shake_trigger = true;
    audio_play_sound(sb_enemy_hit,0,0);
    damage_count += 100;
    scr_state_set("getup");
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
