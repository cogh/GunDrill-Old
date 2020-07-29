/// @description scr_gun_dir()
/// @function scr_gun_dir

// Standard
if inp_drill_up {
    gun_dir = 90;
}
else if inp_drill_down && (!inp_shoot || !grounded) {
    gun_dir = 270;
}
else if inp_drill_right {
	facing = 1;
    gun_dir = 0;
}
else if inp_drill_left {
	facing = -1;
    gun_dir = 0;
}

// Wall correction
if state = st_plr_wall {
    gun_dir = 0;
}
