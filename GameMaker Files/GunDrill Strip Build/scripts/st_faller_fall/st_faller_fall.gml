/// @description st_faller_fall()
/// @function st_faller_fall

// Initialise
if (state_timer = 0) {
    sprite_index = spr_faller_fall;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Action
scr_apply_velocity(5/room_speed,270);

// Collision
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
if place_meeting(x,y+1,par_solid) {
    scr_state_set("fallen");
}
