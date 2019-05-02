/// @description st_stationary_idle()
/// @function st_stationary_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_stationary;
    image_index = 0;
    image_speed = 6 / room_speed;
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
    //scr_state_set('state_2');
}
