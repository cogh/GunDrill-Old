/// @description  Draw

// Image speed
image_speed = dir * (12/room_speed);

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

// Draw self
draw_sprite_ext(sprite_index,image_index,x+shake_x,y+shake_y,1,1,0,image_blend,1);

