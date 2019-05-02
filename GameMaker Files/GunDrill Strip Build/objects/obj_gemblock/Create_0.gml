/// @description temp

dead = false;
hp_max = 5;
hp = hp_max;

// Data structures
damage_packets = ds_list_create();

// Sprite
damage_count = 0;
damage_count_timer = 0;
shake = 0;
blink = 0;
blend_timer = 0;
blend_colour = c_white;
flash_timer = 0;
facing = 1;
shake_timer = 0;
