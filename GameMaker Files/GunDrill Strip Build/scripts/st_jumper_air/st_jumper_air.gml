/// @description st_jumper_air()
/// @function st_jumper_air

// Initialise
if (state_timer = 0) {
    scr_set_velocity(5,90);
    sprite_index = spr_jumper_air;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Grav
scr_apply_force(8/room_speed,270);

// Apply speed
if !place_meeting(x,y+vsp,par_solid) {
    scr_apply_speed(0,vsp);
}
else {
    scr_collide_v();
}

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if place_meeting(x,y+1,par_solid) && state_timer > 2 {
    scr_state_set("idle");
}
