/// @description st_gun_grip()
/// @function st_gun_grip
if gun_state_timer = 0 {
    //stuff
    gun_visible = true;
}
gun_state_timer++;

// Set sprite
scr_gun_sprite();

// Release grip
if !inp_drill && grip_target != noone {
	grip_target.gripped = false;
	grip_target = noone;
}

// Transitions
if inp_shoot {
    gun_state = st_gun_idle;
    gun_state_timer = 0;
	// Need to add pushback here too
}
if grip_target = noone {
	if inp_drill {
		gun_state = st_gun_drill;
	}
	else {
		gun_state = st_gun_idle;
	}
    gun_state_timer = 0;
}
