/// @description st_boss_wake();
/// @function st_boss_wake

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss;
    // Sprite
    sprite_index = spr_boss_idle;
    // Hitbox
    hitbox_active = false;
    // Reset flip
    flip = false;
}
state_timer++;

// Anticipation
if state_timer = 80 {
    scr_state_set("antic");
}

// On hit
if flip = true {
    // Push player back
    //obj_player.vsp = -obj_player.jump_vel*1;
    //obj_player.hsp = sign(obj_player.x-obj_boss.x)*5;
    // Sound
    audio_play_sound(sb_boss_shell,0,0);
    // State
    scr_state_set("flip");
    flip = false;
}
// Health
if flip = true {
    audio_play_sound(sb_enemy_hit,0,0);
    scr_state_set("flip");
    flip = false;
}

// Death
if hp <= 0 {
    scr_state_set("dead");
}
