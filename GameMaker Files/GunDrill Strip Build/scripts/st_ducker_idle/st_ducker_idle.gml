/// @description st_ducker_idle()
/// @function st_ducker_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_ducker;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if (state_timer = 60) {
    if place_meeting(x,y,par_solid) {
        scr_state_set("duck");
    }
    else {
        scr_state_set("rise");
    }
}
