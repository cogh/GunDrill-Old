/// @description Insert description here
// You can write your code in this editor

// State
state = "fall";

// Phys
msp = 0;
grav = 0;

// Riding parent
parent_link = noone;

// Dummy solid
dummy_solid = instance_create(x,y,obj_dummy_solid);
dummy_solid.sprite_index = mask_index;
dummy_solid.mask_index = mask_index;

// Sprite
sprite_shake = 0;