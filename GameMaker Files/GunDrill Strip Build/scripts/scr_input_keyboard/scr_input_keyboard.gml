/// @description scr_input()
/// @function scr_input

// Digital movement
inp_right = keyboard_check(ord("D"));
inp_up = keyboard_check(ord("W"));
inp_left = keyboard_check(ord("A"));
inp_down = keyboard_check(ord("S"));

// Digital drill movement
inp_drill_right       = keyboard_check(vk_right);
inp_drill_up          = keyboard_check(vk_up);
inp_drill_left        = keyboard_check(vk_left);
inp_drill_down        = keyboard_check(vk_down);
inp_drill_right_press = keyboard_check_pressed(vk_right);
inp_drill_up_press    = keyboard_check_pressed(vk_up);
inp_drill_left_press  = keyboard_check_pressed(vk_left);
inp_drill_down_press  = keyboard_check_pressed(vk_down);

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

// Drill
inp_drill = inp_drill_left || inp_drill_right || inp_drill_up || inp_drill_down;

// Shoot
if (inp_drill_right_press && inp_gun_right_buffer)
or (inp_drill_up_press    && inp_gun_up_buffer   )
or (inp_drill_left_press  && inp_gun_left_buffer )
or (inp_drill_down_press  && inp_gun_down_buffer )
{
	inp_drill = false;
	inp_shoot = true;
}

// Release shoot/drill
if (!inp_drill_right && !inp_drill_up && !inp_drill_left && !inp_drill_down)
{
	inp_shoot = false;
	inp_drill = false;
}

// Burst
inp_burst = (inp_drill && keyboard_check_pressed(ord("K")));

// Gun buffers
inp_gun_right_buffer--;
inp_gun_up_buffer--;
inp_gun_left_buffer--;
inp_gun_down_buffer--;

if (inp_drill_right) { inp_gun_right_buffer = gun_buffer_max; }
if (inp_drill_up)    { inp_gun_up_buffer    = gun_buffer_max; }
if (inp_drill_left)  { inp_gun_left_buffer  = gun_buffer_max; }
if (inp_drill_down)  { inp_gun_down_buffer  = gun_buffer_max; }