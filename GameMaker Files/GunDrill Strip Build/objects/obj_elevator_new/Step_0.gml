/// @description Insert description here
// You can write your code in this editor

// Target x
target_x = (origin_x + (sin(obj_timer.time*pi*2)*8));

// Velocity
hsp = target_x - x;
vsp = 0;

// Raise
if place_meeting(x,y-1,obj_player) {
	vsp -= 1;
}
else {
	vsp = 0;
}

// Set chain coords
chain_x1 = x;
chain_y1 = bbox_top;

// Find new passengers
for (var _i = 0; _i < instance_number(par_entity); _i++) {
	var _entity = instance_find(par_entity,_i);
	if rectangle_in_rectangle(
	bbox_left,bbox_top-1,bbox_right,bbox_top-1,
	_entity.bbox_left,_entity.bbox_bottom,_entity.bbox_right,_entity.bbox_bottom) {
	    if ds_list_find_index(passenger_list,_entity) = -1 {
	        ds_list_add(passenger_list,_entity);
	    }
	}
}

// Delete old passengers
for (var _i = 0; _i < ds_list_size(passenger_list); _i++) {
	var _passenger = passenger_list[|_i];
	if !instance_exists(_passenger) {
		ds_list_delete(passenger_list,_i);
	}
	else if !rectangle_in_rectangle(
	bbox_left,bbox_top-1,bbox_right,bbox_top-1,
	_passenger.bbox_left,_passenger.bbox_bottom,_passenger.bbox_right,_passenger.bbox_bottom) {
		ds_list_delete(passenger_list,_i);
	}
}

// Weight
vsp += ds_list_size(passenger_list)*0.05;
vsp *= 0.9;

// Recentre
//vsp += (origin_y - y)*0.01;

// Apply hsp
x += hsp;

// Move passenger horizontal
for (var _i = 0; _i < ds_list_size(passenger_list); _i++) {
	var _passenger = passenger_list[|_i];
	if _passenger != noone {
		_passenger.shunt_x = hsp;
	    with _passenger {
	        if !place_meeting(x+shunt_x,y,par_solid) {
	            x += shunt_x;
	        }
			shunt_x = 0;
	    }
	}
}

// Push entities
var _entity = instance_place(x,y,par_entity);
if instance_exists(_entity) {
	while place_meeting(x,y,_entity) {
		_entity.x += sign(hsp);
	}
}

// Apply vsp
y += vsp;

// Move passenger vertical
for (var _i = 0; _i < ds_list_size(passenger_list); _i++) {
	var _passenger = passenger_list[|_i];
	if _passenger != noone {
		_passenger.shunt_y = vsp;
	    with _passenger {
	        if !place_meeting(x,y+shunt_y,par_solid) {
	            y += shunt_y;
	        }
			shunt_y = 0;
	    }
	}
}

// Push entities
var _entity = instance_place(x,y,par_entity);
if instance_exists(_entity) {
	while place_meeting(x,y,_entity) {
		_entity.y += sign(vsp);
	}
}