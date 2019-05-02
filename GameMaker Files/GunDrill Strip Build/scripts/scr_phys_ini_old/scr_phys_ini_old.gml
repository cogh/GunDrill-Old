/// @description scr_phys_ini()
/// @function scr_phys_ini

// Stats  (jump_time and grav_v_max redundant)
move_vel_max = TPS(10);
jump_height = 2*TILE_SIZE;
jump_time = 0;
grav_vel_default = TPS(1.6);
grav_vel = grav_vel_default;
drag_ground = 0.15;
drag_air = 0.04;
jetpack_vel = TPS(16);

// Dynamic
hsp = 0;
vsp = 0;
hsp_d = 0;
vsp_d = 0;
drag_h = drag_ground;
drag_v = drag_ground;
move_vel = move_vel_max*(drag_h);
jump_vel = sqrt(1 * jump_height * grav_vel);

/*
Note: The '1' in jump_vel was originally 2.
I changed it when I doubled gravity when not
floating. 
Not sure how the formula works anyway, but I'll
leave it there and ask Fanatical about it sometime.
*/







/* Saved Old Stats

move_vel_max = TPS(10);
jump_height = 2*TILE_SIZE;
jump_time = 0;
grav_vel_default = TPS(0.8);
grav_vel = grav_vel_default;
drag_ground = 0.15;
drag_air = 0.03;
jetpack_vel = TPS(12);

*/

