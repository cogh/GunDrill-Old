/// @description st_swooper_swoop()
/// @function st_swooper_swoop

// Initialise
if (state_timer = 0) {
    sprite_index = spr_swooper_idle;
    image_index = 0;
    image_speed = 0;
    scr_set_velocity(2,270+(choose(-22.5,22.5)));
}
state_timer++;

// Upwards drift
scr_apply_velocity(2/room_speed,90);

// Collision
if place_meeting(x+hsp,y,par_solid) {
    scr_collide_h();
}
if place_meeting(x,y+vsp,par_solid) {
    scr_collide_v();
}

// Apply speed
scr_apply_speed(hsp,vsp);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if place_meeting(x,y-1,par_solid) {
    scr_state_set("idle");
}
