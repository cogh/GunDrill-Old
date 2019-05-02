/// @description st_jumper_antic()
/// @function st_jumper_antic

// Initialise
if (state_timer = 0) {
    sprite_index = spr_jumper_antic;
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
    scr_state_set("air");
}
