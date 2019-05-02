/// @description st_floater_idle()
/// @function st_floater_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_floater_idle;
	mask_index = mask_floater;
    image_index = 0;
    image_speed = 3 / room_speed;
	hp = 3;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
if hp <= 0 or trig_flip {
	scr_state_set("shrink");
}

// Transition
if (state_timer = 60) {
    //scr_state_set('state_2');
}
