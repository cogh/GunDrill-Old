/// @description Insert description here
// You can write your code in this editor

// Initialise sprite coords
sprite_x = x;
sprite_y = y;

// Facing
if abs(hsp) > 0 {
	//facing = sign(hsp);
}

// Shake
draw_shake(1);

// Set shader
if flash_timer > 0 {
    shader_set(shdr_flash);
	flash_timer--;
}

// Draw sprite
draw_sprite_ext(sprite_index,image_index,sprite_x,sprite_y,facing,1,image_angle,image_blend,1);

// Reset shader
shader_reset();

// Damage count
//draw_damage_count();
   
   
   
   
   
   
   
   
   
   
   