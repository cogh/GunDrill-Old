/// @description  Draw

// Shake
if shake_timer > 0 {
    shake_x = irandom_range(-1, 1);
    shake_y = irandom_range(-1, 1);
}
else {
    shake_x = 0;
    shake_y = 0;
}
shake_timer--;

// Set shader
if flash_timer > 0 {
    shader_set(shdr_flash);
	flash_timer--;
}

// Draw self
draw_sprite_ext(sprite_index,image_index,x+shake_x,y+shake_y,1,1,0,image_blend,1);

shader_reset();

