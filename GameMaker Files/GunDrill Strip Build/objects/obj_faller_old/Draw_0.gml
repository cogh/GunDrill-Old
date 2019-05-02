/// @description  Draw

// Initialise sprite coords
sprite_x = x;
sprite_y = y;

// Blink
if blink_timer > 0 {
    if sprite_alpha = 1 { sprite_alpha = 0; }
    else { sprite_alpha = 1; }
}
else {
    sprite_alpha = 1;
}

// Shake
draw_shake(1);

// Blend
if blend_timer > 0 {
    image_blend = blend_colour;
}
else {
    image_blend = c_white;
}
blend_timer--;

// Damage count
draw_damage_count();

// Draw self
draw_sprite_ext(sprite_index,image_index,sprite_x,sprite_y,1,1,0,image_blend,sprite_alpha);

