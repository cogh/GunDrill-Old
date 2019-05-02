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

// Damage count
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
dmg_count_x = lerp(dmg_count_x,x,0.5);
dmg_count_y = lerp(dmg_count_y,bbox_top-8,0.1);
if damage_count_timer > 0 {
	draw_set_colour(c_black);
	for (var _i=0; _i==360; _i+=45) {
		draw_text(x+lengthdir_x(2,_i),y+lengthdir_y(2,_i),string(damage_count));
	}
	draw_set_colour(c_red);
    draw_text(dmg_count_x,dmg_count_y,string_hash_to_newline(string(damage_count)));
}
else {
    damage_count = 0;
}
damage_count_timer -= 1 / room_speed;