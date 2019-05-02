/// @description  Draw

// Shake
if shake_timer > 0 {
    shake_x = irandom_range(-1, 1);
    shake_y = irandom_range(-1, 1);
    image_blend = c_red;
}
else {
    shake_x = 0;
    shake_y = 0;
    image_blend = c_white;
}
shake_timer--;

// Damage count
draw_set_colour(c_red);
if damage_count_timer > 0 {
    draw_text(x,y-32,string_hash_to_newline(string(damage_count)));
}
else {
    damage_count = 0;
}
damage_count_timer -= 1 / room_speed;

// Draw self
draw_sprite_ext(sprite_index,image_index,x+shake_x,y+shake_y,1,1,0,image_blend,1);

