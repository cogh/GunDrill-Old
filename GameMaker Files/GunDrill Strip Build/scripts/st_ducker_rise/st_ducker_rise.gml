/// @description st_ducker_rise()
/// @function st_ducker_rise

// Initialise
if (state_timer = 0) {
    sprite_index = spr_ducker;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Sink
if !collision_point(x,bbox_bottom,par_solid,0,0) {
    vsp = -1;
}

// Apply forces
x += hsp;
y += vsp;

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if collision_point(x,bbox_bottom,par_solid,0,0) {
    scr_state_set("idle");
}
