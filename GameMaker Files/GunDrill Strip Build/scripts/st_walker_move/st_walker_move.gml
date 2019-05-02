/// @description st_walker_move()
/// @function st_walker_move

// Initialise
if (state_timer = 0) {
    sprite_index = spr_walker;
    image_index = 0;
    image_speed = 6 / room_speed;
    dir = choose(0,180);
}
state_timer++;

// Move
scr_set_velocity(1,dir);

// Collision
if place_meeting(x+hsp,y,par_solid) {
    scr_collide_h();
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
if (state_timer = 60) or collision_adj(-1,0,par_solid) or collision_adj(1,0,par_solid) {
    scr_state_set("idle");
}
