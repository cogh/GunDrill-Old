/// @description Insert description here
// You can write your code in this editor

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Physics
vsp = clamp(vsp+grav_speed,-10,10);
scr_phys_slope_down();
scr_phys_collide();
scr_phys_clip_fix();

// Die
scr_die();