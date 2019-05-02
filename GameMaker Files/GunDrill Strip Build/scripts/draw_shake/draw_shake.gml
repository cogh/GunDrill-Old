/// @description draw_shake(strength,colour)
/// @function draw_shake
/// @param strength
/// @param colour

var str = argument0;

if shake_timer > 0 {
    shake_x = irandom_range(-str, str);
    shake_y = irandom_range(-str, str);
}
else {
    shake_x = 0;
    shake_y = 0;
}
shake_timer--;

sprite_x += shake_x;
sprite_y += shake_y;
