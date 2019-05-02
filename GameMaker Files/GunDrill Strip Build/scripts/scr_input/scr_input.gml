/// @description scr_input()
/// @function scr_input

// Set port
var gp_port = 0;
gamepad_set_axis_deadzone(0,0.3);

// Axis Values
inp_xdir = gamepad_axis_value(gp_port,gp_axislh);
inp_ydir = gamepad_axis_value(gp_port,gp_axislv);

// Digital movement
inp_right = (inp_xdir > 0.3);
inp_up = (inp_ydir < -0.3);
inp_left = (inp_xdir < -0.3);
inp_down = (inp_ydir > 0.3);

// Jump
inp_jump = gamepad_button_check_pressed(gp_port,gp_face1);

// Float
inp_float = gamepad_button_check(gp_port,gp_face1);

// Shoot
inp_shoot = gamepad_button_check(gp_port,gp_face3);

// Drill
inp_drill = (gamepad_button_value(gp_port,gp_shoulderrb) > 0.5);

// Burst
inp_burst = (inp_drill && gamepad_button_check_pressed(gp_port,gp_face3));
