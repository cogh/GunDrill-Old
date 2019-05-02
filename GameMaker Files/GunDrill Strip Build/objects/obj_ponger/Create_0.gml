/// @description  Create

// Stats (Static)
hp_max = 5;
def = 0;
atk = 0;

// Stats (Dynamic)
hp = hp_max;
shot_rate = 0;
shot_speed = 0;
shot_dmg = 0;

// Stats (Flags)
invulnerable = 0;
intangible = 0;
touch_damage = 0;
deflect = 0;
regen = 0;
def_r = 0;
def_u = 0;
def_l = 0;
def_d = 0;

// Phys (Static)
move_speed = 0;
jump_speed = 0;
jump_height = 0;
grav_speed = 0;
drag_ground = 0;
drag_air = 0;

// Phys (Dynamic)
hsp = 0;
vsp = 0;
xdir = 0;
ydir = 0;

// Phys (flags)
is_platform = 0;
is_physical = 0;
adj_r = 0;
adj_u = 0;
adj_l = 0;
adj_d = 0;

// Timers
state_timer = 0;
hurt_timer = 0;
shot_timer = 0;
shake_timer = 0;

// Triggers
trig_dealt_dmg = 0;
trig_took_dmg = 0;
trig_landed = 0;

// States
state_list = ds_map_create();
ds_map_add(state_list,"move",st_ponger_move);
scr_state_set("move");

// Data structures
damage_packets = ds_list_create();

// Sprite
damage_count = 0;
damage_count_timer = 0;
blend_timer = 0;
blend_colour = c_white;

