/// @description Insert description here
// You can write your code in this editor

// Velocity
hsp = 0;
vsp = 0;

// Origin
origin_x = x;
origin_y = y;

// Chain coords
chain_x1 = x;
chain_y1 = bbox_top;
chain_x2 = x;

// Get top y
var _x = x;
var _y = bbox_top-1;
while !collision_point(_x,_y,par_solid,false,true) {
	_y--;
}
chain_y2 = _y;

// Passengers
passenger_list = ds_list_create();

own_weight = 0.1;