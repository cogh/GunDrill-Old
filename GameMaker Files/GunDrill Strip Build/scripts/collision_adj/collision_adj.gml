/// @description collision_adj(x,y,object_index)
/// @function collision_adj
/// @param x
/// @param y
/// @param object_index

// Arguments
var _xdir = argument0;
var _ydir = argument1;
var _object = argument2;

// Initialise coordinates
var _x1,_x2,_y1,_y2;

// Get coordinates
switch _xdir {
    case -1:
        _x1 = bbox_left-1;
        _x2 = bbox_left-1;
        break;
    case 0:
        _x1 = bbox_left;
        _x2 = bbox_right;
        break;
    case 1:
        _x1 = bbox_right+1;
        _x2 = bbox_right+1;
        break;
}
switch _ydir {
    case -1:
        _y1 = bbox_top-1;
        _y2 = bbox_top-1;
        break;
    case 0:
        _y1 = bbox_top;
        _y2 = bbox_bottom;
        break;
    case 1:
        _y1 = bbox_bottom+1;
        _y2 = bbox_bottom+1;
        break;
}

// Return collision
if collision_rectangle(_x1,_y1,_x2,_y2,_object,true,true) != noone {
	return true;
}
else {
	return false;
}