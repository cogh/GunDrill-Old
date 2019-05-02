/// @description st_jetpack_idle()
/// @function st_jetpack_idle

if jetpack_state_timer = 0 {
    // Initialise
    jetpack_visible = true;
}
jetpack_state_timer += 1/room_speed;

// Change direction
scr_jetpack_dir();

// Regain charge
if grounded //or sidled_left or sidled_right 
{
    jetpack_charged = true;
}

// Sprite
if inp_float { jetpack_sprite = spr_jetpack_up; }
else { jetpack_sprite = spr_jetpack_off; }

// State change
if !grounded //&& !sidled_left && !sidled_right
and inp_jump && jetpack_charged {
    jetpack_state = st_jetpack_active;
    jetpack_state_timer = 0;
    jetpack_timer = 1;
    jetpack_charged = false;
}
