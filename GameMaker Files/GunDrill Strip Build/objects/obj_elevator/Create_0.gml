/// @description Insert description here
// You can write your code in this editor

// Phys
hsp = 0;
vsp = 0;

// State
state = "idle";
trigger = false;

// Sub masks
submask_top = instance_create(x,y,obj_submask);
submask_top.sprite_index = mask_elevator_top;
submask_doors = instance_create(x,y,obj_submask);
submask_doors.sprite_index = no_sprite;
submask_bottom = instance_create(x,y,obj_submask);
submask_bottom.sprite_index = mask_elevator_bottom;
