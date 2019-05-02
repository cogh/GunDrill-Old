/// @description st_jetpack_active()
/// @function st_jetpack_active

if jetpack_state_timer = 0 {
    // Apply movement
    scr_jetpack_boost()
}
jetpack_state_timer += 1;

// Set sprite
jetpack_sprite = scr_jetpack_sprite();

// Change states
if jetpack_state_timer > 30
or grounded 
//or sidled_left or sidled_right 
{
    jetpack_state_timer = 0;
    jetpack_state = st_jetpack_idle;
}
