/// @description st_boss_inactive();
/// @function st_boss_inactive

// Initialise
if state_timer = 0 {
    // Mask
    mask_index = mask_boss_ball;
    // Sprite
    sprite_index = spr_boss_curled;
    // Hitbox
    hitbox_active = false;
    // Plat
    plat = instance_create(x,y,obj_boss_plat);
}
state_timer++;

// On hit, wake
if flip = true {
	obj_music.track = audio_play_sound(track_boss,0,1);
    audio_play_sound(sb_boss_shell,0,0);
    flip = false;
    scr_state_set("wake");
    with plat { instance_destroy(); };
    depth = 0;
}
