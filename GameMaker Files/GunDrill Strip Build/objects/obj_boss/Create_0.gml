/// @description  Create

// Initialise enemy
hp_max = 12;
hp = hp_max;
defense = 0;
def_r = false;
def_u = false;
def_l = false;
def_d = false;
damage_packets = ds_list_create();
shake_timer = 0;
damage_count = 0;
damage_count_timer = 0;
flip = false;
invulnerable = false;
intangible = false;
dmg_count_x = 0;
dmg_count_y = 0;
flash_timer = 0;

// Create state lists
state_list = ds_map_create();

// Main states
ds_map_add(state_list,"inactive",st_boss_inactive);
ds_map_add(state_list,"wake",st_boss_wake);
ds_map_add(state_list,"idle",st_boss_idle);
ds_map_add(state_list,"antic",st_boss_antic);
ds_map_add(state_list,"roll",st_boss_roll);
ds_map_add(state_list,"bump",st_boss_bump);
ds_map_add(state_list,"return",st_boss_return);
ds_map_add(state_list,"flip",st_boss_flip);
ds_map_add(state_list,"flipped",st_boss_flipped);
ds_map_add(state_list,"getup",st_boss_getup);
ds_map_add(state_list,"dead",st_boss_dead);

// Set state
scr_state_set("inactive");

// Set origin
origin_x = x;

// Stats
hp_max = 500;
hp = hp_max;
dead = false;
damage = false;

// Hitbox
hitbox_active = false;

// Child objects
//scr_sub_ini();
//scr_sub_manage();

