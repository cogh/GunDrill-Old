/// @description scr_input()
/// @function scr_input

// Digital movement
inp_right = keyboard_check(ord("D"));
inp_up = keyboard_check(ord("W"));
inp_left = keyboard_check(ord("A"));
inp_down = keyboard_check(ord("S"));

// Axis Directions
inp_xdir = inp_right - inp_left;
inp_ydir = inp_down - inp_up;

// Jump
inp_jump = keyboard_check_pressed(vk_space);

// Float
inp_float = keyboard_check(vk_space);

// Shoot
inp_shoot = keyboard_check(ord("K"));

// Shoot
inp_drill = keyboard_check(ord("L"));

// Burst
inp_burst = (inp_drill && keyboard_check_pressed(ord("K")));
