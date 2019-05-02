/// @description st_riser_rise()
/// @function st_riser_rise

// Initialise
if (state_timer = 0) {
    sprite_index = spr_riser;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Rise
if place_meeting(x,y,par_solid) {
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
if !place_meeting(x,y,par_solid) {
    scr_state_set("idle");
}
