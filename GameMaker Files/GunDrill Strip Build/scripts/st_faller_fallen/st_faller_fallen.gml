/// @description st_faller_fallen()
/// @function st_faller_fallen

// Initialise
if (state_timer = 0) {
    sprite_index = spr_faller_fallen;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Die
scr_die();

// Blink
blink_timer = 1;

// Transition
if (state_timer = 60) {
    instance_destroy();
}
