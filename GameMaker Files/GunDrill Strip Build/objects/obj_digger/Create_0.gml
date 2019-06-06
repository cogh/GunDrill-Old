/// @description Insert description here
// You can write your code in this editor

/// @description  Create

// Stats (Static)
hp_max = 10;
def = 0;
atk = 0;

// Stats (Dynamic)
hp = hp_max;
shot_rate = 0;
shot_speed = 0;
shot_dmg = 0;
dmg = 1;

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
move_speed = 8 / room_speed;
jump_speed = 0;
jump_height = 0;
grav_speed = 10 / room_speed;
drag_ground = 0;
drag_air = 0;

// Phys (Dynamic)
hsp = 0;
vsp = 0;
shunt_x = 0;
shunt_y = 0;
dir = 0;
xdir = 0;
ydir = 0;
rotdir = 0;
grounddir = 0;
origin_x = x;
origin_y = y;

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
trig_flip = 0;
in_proximity = false;
proximity_click = false;

// Data structures
damage_packets = ds_list_create();

// State
state = choose("hidden");

// Sprite
damage_count = 0;
damage_count_timer = 0;
shake = 0;
blink = 0;
blend_timer = 0;
blend_colour = c_white;
flash_timer = 0;
facing = 1;