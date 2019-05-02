/// @description draw_rect(x1,y1,x2,y2)
/// @function draw_rect
/// @param x1
/// @param y1
/// @param x2
/// @param y2

// Arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

// Draw
draw_line_width(x1, y1, x2, y1, 1);
draw_line_width(x2, y1, x2, y2, 1);
draw_line_width(x2, y2, x1, y2, 1);
draw_line_width(x1, y2, x1, y1, 1);
