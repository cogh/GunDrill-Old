/// @description st_faller_antic()
/// @function st_faller_antic

// Initialise
if (state_timer = 0) {
    sprite_index = spr_faller_antic;
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

// Shake
shake_timer = 1;

// Transition
if (state_timer = 60) {
    scr_state_set("fall");
}
