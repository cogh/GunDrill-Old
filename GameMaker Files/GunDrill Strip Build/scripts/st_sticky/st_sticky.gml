/// @description st_sticky()
/// @function st_sticky

// Initialise
if (state_timer = 0) {
    sprite_index = spr_sticky;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Action
scr_apply_force(0,dir);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if (state_timer = 60) {
    scr_state_set("state_2");
}
