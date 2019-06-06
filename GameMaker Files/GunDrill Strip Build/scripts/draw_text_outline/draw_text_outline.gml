/// @desc draw_dotted_line(x,y,text)
/// @arg x
/// @arg y
/// @arg text

// Arguments
var _x = argument0;
var _y = argument1;
var _text = argument2;

// Draw outline
for (var _i = 0; _i < 360; _i+= 90) {
	draw_text(_x+lengthdir_x(1,_i),_y+lengthdir_y(1,_i),_text);
}