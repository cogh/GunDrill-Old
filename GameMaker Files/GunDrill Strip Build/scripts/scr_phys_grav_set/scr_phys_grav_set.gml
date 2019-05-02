/// @description scr_phys_grav_set()
/// @function scr_phys_grav_set
if place_meeting(x,y,par_liquid) {
    grav_vel = grav_vel_default*0.3;
}
else if !inp_float {
    grav_vel = grav_vel_default;
}
else {
    grav_vel = grav_vel_default/2;
}
