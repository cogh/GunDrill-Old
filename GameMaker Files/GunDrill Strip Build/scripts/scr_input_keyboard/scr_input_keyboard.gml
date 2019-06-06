/// @description scr_input()
/// @function scr_input

// Digital movement
inp_right = keyboard_check(vk_right);
inp_up = keyboard_check(vk_up);
inp_left = keyboard_check(vk_left);
inp_down = keyboard_check(vk_down);

// Digital drill movement
inp_drill_right = keyboard_check(ord("D"));
inp_drill_up = keyboard_check(ord("W"));
inp_drill_left = keyboard_check(ord("A"));
inp_drill_down = keyboard_check(ord("S"));

// Axis Directions
inp_xdir = inp_right - inp_left;
inp_ydir = inp_down - inp_up;

// Drill axis directions
inp_drill_xdir = inp_drill_right - inp_drill_left;
inp_drill_ydir = inp_drill_down - inp_drill_up;

// Drill direction
if inp_up {
    inp_drill_dir = 90;
}
else if inp_down {
    inp_drill_dir = 270;
}
else {
    inp_drill_dir = 0;
}

// Jump
inp_jump = keyboard_check_pressed(vk_space);

// Float
inp_float = keyboard_check(vk_space);

// Shoot
inp_shoot = keyboard_check(vk_rcontrol);

// Shoot
inp_drill = keyboard_check(ord("L"));

// Burst
inp_burst = (inp_drill && keyboard_check_pressed(ord("K")));
