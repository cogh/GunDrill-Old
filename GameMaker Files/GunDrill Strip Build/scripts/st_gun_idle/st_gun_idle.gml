/// @description st_gun_inactive()
/// @function st_gun_inactive
if gun_state_timer = 0 {
    //stuff
    gun_visible = true;
}
gun_state_timer++;

// Set dir
scr_gun_dir();

// Set sprite
scr_gun_sprite();

// Transitions
if inp_shoot {
    gun_state = st_gun_shoot;
    gun_state_timer = 0;
}
if inp_drill {
    gun_state = st_gun_drill;
    gun_state_timer = 0;
}
