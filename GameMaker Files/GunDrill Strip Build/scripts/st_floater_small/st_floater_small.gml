/// @description st_floater_idle()
/// @function st_floater_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_floater_small;
	mask_index = no_mask;
    image_index = 0;
    image_speed = 3 / room_speed;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
if state_timer = 60 {
    scr_state_set("grow");
}

// Transition
if (state_timer = 60) {
    //scr_state_set('state_2');
}
