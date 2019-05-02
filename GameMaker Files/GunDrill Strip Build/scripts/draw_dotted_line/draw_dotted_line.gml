/// @desc draw_dotted_line(x1,y1,x2,y2,width,outline,padding)
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2
/// @arg width
/// @arg outline
/// @arg padding

// Arguments
var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _width = argument4;
var _outline = argument5;
var _padding = argument6;

// Variables
var _max_distance = point_distance(_x1,_y1,_x2,_y2)-_padding;
var _dist = _padding;
var _dir = point_direction(_x1,_y1,_x2,_y2);
var _x = 0;
var _y = 0;

// Draw dots
while _dist < _max_distance {
	_x = _x1 + lengthdir_x(_dist,_dir) - 1;
	_y = _y1 + lengthdir_y(_dist,_dir) - 1;
	draw_circle(_x,_y,_width,_outline);
	_dist += _padding;
}