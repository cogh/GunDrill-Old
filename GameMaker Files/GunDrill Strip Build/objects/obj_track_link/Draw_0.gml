/// @description Insert description here
// You can write your code in this editor

// Draw self
//draw_self();

// Draw link
if node_left != noone && node_right != noone {
	var _x1 = node_left.x;
	var _y1 = node_left.y;
	var _x2 = node_right.x;
	var _y2 = node_right.y;
	draw_dotted_line(_x1,_y1,_x2,_y2,1,false,8);
}