/// @description scr_gun_dir()
/// @function scr_gun_dir

// Standard
if inp_up {
    gun_dir = 90;
}
else if inp_down {
    gun_dir = 270;
}
else {
    gun_dir = 0;
}

// Wall correction
if state = st_plr_wall {
    gun_dir = 0;
}
