/// @description Insert description here
// You can write your code in this editor

// Stop at last index
if image_index + image_speed >= image_number {
	image_speed = 0;
	image_index = image_number-1;
}
if timer >= 10 && sprite_index = spr_player_dead {
	sprite_index = spr_player_dead_land;
	image_index = 0;
	image_speed = 32 / room_speed;
}



// Draw background
image_xscale = facing;
draw_set_color(c_black);
draw_rectangle(-640,-640,640,640,false);

// Draw self
draw_self();