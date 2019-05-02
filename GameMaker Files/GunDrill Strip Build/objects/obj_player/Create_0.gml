/// @description  Create event

// Initialise stats
hp = 1;
hit = false;

// Initialise physics
scr_phys_ini();
scr_touching();

// Initialise states
scr_states_ini();

// Initialise gun
scr_gun_ini();

// Initialise jetpack
scr_jetpack_ini();

// Initialise sprite
scr_sprite_ini();
invisible = false;

// Create camera
scr_create_camera();