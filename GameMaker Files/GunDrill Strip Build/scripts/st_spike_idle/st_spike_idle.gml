/// @description st_spike_idle()
/// @function st_spike_idle

// Initialise
if (state_timer = 0) {
    //sprite_index = spr_spike;
    //image_index = 0;
    image_speed = 0;
}
state_timer++;

// Force
scr_set_velocity(0,0);

// Process damage
scr_process_damage();

// Send touch damage
if place_meeting(x,y,obj_player) {
    health_change(-4);
}

// Die
scr_die();

// Transition
if (state_timer = 60) {
    //scr_state_set('state_2');
}
