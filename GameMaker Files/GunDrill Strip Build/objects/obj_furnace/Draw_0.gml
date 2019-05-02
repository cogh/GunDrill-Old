/// @description  Draw

// Set sprite
if lit {
    sprite_index = spr_furnace_lit;
}
else {
    sprite_index = spr_furnace;
}

// Anim speed
image_speed = 6 / room_speed;

// Draw sprite
draw_self();

