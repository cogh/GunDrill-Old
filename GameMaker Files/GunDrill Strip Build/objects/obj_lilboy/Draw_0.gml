/// @description  Draw

// Initialise sprite coords
sprite_x = x;
sprite_y = y;

// Shake
draw_shake(1);

// Damage count
draw_damage_count();

// Draw self
draw_sprite_ext(sprite_index,image_index,x+sprite_x,y+sprite_y,1,1,0,image_blend,1);

