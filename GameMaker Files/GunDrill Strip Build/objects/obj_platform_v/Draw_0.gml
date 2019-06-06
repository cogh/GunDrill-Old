/// @description Insert description here
// You can write your code in this editor

// Draw chain
var _y = 0;
while !place_meeting(x,y+_y,par_solid) {
	draw_sprite(spr_chain,0,x+8,y+_y);
	_y -= 8;
}

// Draw self
draw_self();

//collision_line_length(x+16,y,x+16,y-128,par_solid,true,true);

