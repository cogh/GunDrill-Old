/// @description st_plr_air()
/// @function st_plr_air

// Initialise
if state_timer = 0 {
    //stuff
    //jetpack_state_timer = 0;
    //jetpack_state = st_jetpack_idle;
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

// Transitions
if (sidled_left or sidled_right) && gun_state = st_gun_idle {
    scr_state_set("wall");
}
if grounded {
	if state_timer >= 10 {
		audio_play_sound(sb_land,0,0);
		instance_create(x,y,obj_particle_land);
	}
    scr_state_set("ground");
}
if place_meeting(x,y,par_ladder)
&& (inp_up or inp_down)
&& vsp > 0 {
    scr_state_set("ladder");
}

// Sprite
sprite_index = spr_player_air;
