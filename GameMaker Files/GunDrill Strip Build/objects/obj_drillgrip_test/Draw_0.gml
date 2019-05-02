/// @description Insert description here
// You can write your code in this editor

// Indicate grip by colour
if gripped {
	draw_set_color(c_red);
}
else {
	draw_set_color(c_maroon);
}

// Draw self
draw_circle(x,y,8,true);

// Draw grip angle
draw_line_width(x,y,x+lengthdir_x(12,grip_angle),y+lengthdir_y(12,grip_angle),1);

// Draw player sprite
var _index = ((grip_angle+22.5) div 45);
draw_sprite(spr_griptest_player,_index,x,y);