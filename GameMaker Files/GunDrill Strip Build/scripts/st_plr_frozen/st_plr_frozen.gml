/// @description st_plr_ground()
/// @function st_plr_ground

// Initialise
if state_timer = 0 {
    audio_play_sound(sb_land,0,0);
    instance_create(x,y,obj_particle_land);
    // Sprite
    draw_body = true;
    draw_jetpack = true;
    draw_gun = true;
}
state_timer++;

// Physics
scr_phys_drag_set();
scr_phys_move_set();
scr_phys_grav_set();
scr_phys_grav_apply();
//scr_phys_move_apply();
//scr_phys_jump_apply();
scr_phys_swim_apply();
//scr_phys_walljump_apply();
scr_phys_drag_apply();
scr_phys_slope_down();
scr_phys_collide();
scr_phys_clip_fix();

// Gun
//script_execute(gun_state);

// Jetpack
script_execute(jetpack_state);

// Facing
//scr_facing();

// Transition

// Dead
if false {
    scr_state_set("dead");
}

// Sprite
sprite_index = spr_player_ground;
