/// @description st_plr_ground()
/// @function st_plr_ground

// Initialise
if state_timer = 0 {
    // Sprite
    draw_body = true;
    draw_jetpack = true;
    draw_gun = true;
}
state_timer++;

// Physics
scr_phys_all();

// Gun
script_execute(gun_state);

// Jetpack
script_execute(jetpack_state);

// Facing
scr_facing();

// Transition
if !grounded {
    if vsp < 0 { audio_play_sound(sb_jump,0,0); }
    scr_state_set("air");
}
if place_meeting(x,y,par_ladder)
&& inp_up {
    scr_state_set("ladder");
}

// Dead
if obj_data.char_hp <= 0 {
    scr_state_set("dead");
}

// Sprite
sprite_index = spr_player_ground;
