/// @description draw_tiled_line(x1,y1,x2,y2,sprite)
/// @function draw_tiled_line
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param sprite

// Arguments
var _x1 = argument0;
var _y1 = argument1;
var _x2 = argument2;
var _y2 = argument3;
var _sprite = argument4;

// Variables
var _x = 0;
var _y = 0;
var _distance = point_distance(_x1,_y1,_x2,_y2);
var _spacing = (sprite_get_width(_sprite)+sprite_get_height(_sprite))/2;
var _i;

// Draw
for (_i = 0; _i < _distance; _i+=_spacing) {
	var _x = lerp(_x1,_x2,1/(_distance/_i));
	var _y = lerp(_y1,_y2,1/(_distance/_i));
	draw_sprite(_sprite,0,_x,_y);
}
















