/// @description Insert description here
// You can write your code in this editor

// Sprite shake
sprite_shake *= 0.90;
var _sprite_x = x+irandom_range(-sprite_shake,sprite_shake);
var _sprite_y = y+irandom_range(-sprite_shake,sprite_shake);

// Draw self
draw_sprite_ext(sprite_index,0,_sprite_x,_sprite_y,1,1,0,c_white,1);

// Draw debug info
