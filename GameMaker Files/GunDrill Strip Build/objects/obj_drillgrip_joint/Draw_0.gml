/// @description Insert description here
// You can write your code in this editor

// Indicate grip by colour
if gripped {
	draw_set_color(c_blue);
}
else {
	draw_set_color(c_navy);
}

// Draw self
draw_circle(x,y,16,true);

// Draw grip angle
draw_line_width(x,y,x+lengthdir_x(24,grip_angle),y+lengthdir_y(24,grip_angle),2);

// Draw boundaries
draw_line_width(x,y,x+lengthdir_x(24,grip_angle_origin-grip_major_boundary),y+lengthdir_y(24,grip_angle_origin-grip_major_boundary),1);
draw_line_width(x,y,x+lengthdir_x(24,grip_angle_origin+grip_major_boundary),y+lengthdir_y(24,grip_angle_origin+grip_major_boundary),1);

// Write grip angle
//draw_text(x,y,string(grip_angle));