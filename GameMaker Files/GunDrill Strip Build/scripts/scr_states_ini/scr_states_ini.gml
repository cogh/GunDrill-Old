/// @description scr_states_ini()
/// @function scr_states_ini

// Create state lists
state_list = ds_map_create();
jetpack_state_list = ds_map_create();
gun_state_list = ds_map_create();

// Main states
ds_map_add(state_list,"ground",st_plr_ground);
ds_map_add(state_list,"air",st_plr_air);
ds_map_add(state_list,"wall",st_plr_wall);
ds_map_add(state_list,"ladder",st_plr_ladder);
ds_map_add(state_list,"frozen",st_plr_frozen);
ds_map_add(state_list,"grip",st_plr_grip);
ds_map_add(state_list,"dead",st_plr_dead);

// Jetpack states
ds_map_add(jetpack_state_list,"inactive",st_jetpack_inactive);
ds_map_add(jetpack_state_list,"idle",st_jetpack_idle);
ds_map_add(jetpack_state_list,"active",st_jetpack_active);

// Gun states
ds_map_add(gun_state_list,"inactive",st_gun_inactive);
ds_map_add(gun_state_list,"idle",st_gun_idle);
ds_map_add(gun_state_list,"shoot",st_gun_shoot);
ds_map_add(gun_state_list,"drill",st_gun_drill);
ds_map_add(gun_state_list,"burst",st_gun_burst);
ds_map_add(gun_state_list,"grip",st_gun_grip);

// Set initial states
scr_state_set("ground");
jetpack_state = st_jetpack_idle;
gun_state = st_gun_idle;

// State timers
jetpack_state_timer = 0;
gun_state_timer = 0;
invul = 0;
