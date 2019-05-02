/// @description Insert description here
// You can write your code in this editor

vsp = 0;

// Find hsp according to state
switch state {
    case "down":
		if obj_timer.click {
			state = "up";
		}
		else {
			target_y = lerp(range.bbox_top,range.bbox_bottom,obj_timer.time);
			vsp = round(target_y-y);
		}
        break;
    case "up":
		if obj_timer.click {
			state = "down";
		}
		else {
			target_y = lerp(range.bbox_bottom,range.bbox_top,obj_timer.time);
			vsp = round(target_y-y);
		}
        break;
}

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

// Apply vsp
y += vsp;

// Move passenger
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
		_entity.y += vsp;
	}
}
