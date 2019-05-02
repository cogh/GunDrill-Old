/// @description st_faller_idle()
/// @function st_faller_idle

// Initialise
if (state_timer = 0) {
    sprite_index = spr_faller_idle;
    image_index = 0;
    image_speed = 0;
}
state_timer++;

// Action
scr_apply_force(0,0);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if collision_rectangle(x-8,y,x+8,y+80,obj_player,0,0) {
    scr_state_set("antic");
}
