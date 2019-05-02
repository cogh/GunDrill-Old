/// @description st_floater_idle()
/// @function st_floater_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_floater_grow;
	mask_index = no_mask;
    image_index = 0;
    image_speed = 12 / room_speed;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Small state
if image_index + image_speed >= image_number {
	scr_state_set("idle");
}


// Transition
if (state_timer = 60) {
    //scr_state_set('state_2');
}
