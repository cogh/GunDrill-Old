/// @description scr_phys_all()
/// @function scr_phys_all

// Update physics
scr_phys_drag_set();
scr_phys_move_set();
scr_phys_grav_set();

// Apply grav
scr_phys_grav_apply();

// Apply move
scr_phys_move_apply();

// Apply jump
scr_phys_jump_apply();

// Apply swim
scr_phys_swim_apply();

// Apply walljump
//scr_phys_walljump_apply();

// Apply drag
scr_phys_drag_apply();

// Slope down
scr_phys_slope_down();

// Collide and commit
scr_phys_collide();

// Temp clip fix
scr_phys_clip_fix();
