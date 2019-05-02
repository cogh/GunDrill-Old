/// @description  Create

state = "idle";

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

