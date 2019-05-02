/// @description st_sticky()
/// @function st_sticky

// Initialise
if (state_timer = 0) {
    sprite_index = spr_sticky;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Check ground
var grounddir = dir - (rotdir*90);
var grounded = place_meeting(x+lengthdir_x(1,grounddir),y+lengthdir_y(1,grounddir),par_solid);

// Move
scr_set_velocity(1,dir);

// Apply speed
scr_apply_speed(hsp,vsp);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Turn corner
if !grounded {
    x -= 1;
    // Turn
    dir -= (rotdir*90);
    // Move onto other side
    scr_apply_speed(lengthdir_x(8,dir),lengthdir_y(8,dir));
}

// Transition
if !grounded {
    //dir += rotdir*90;
    //scr_state_set('state_2');
}
