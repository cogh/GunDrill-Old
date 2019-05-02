/// @description Insert description here
// You can write your code in this editor

origin_x = x;
origin_y = y;

state = "left";

hsp = 0;
vsp = 0;

range = instance_place(x,y,obj_platform_range);

passenger_list = ds_list_create();