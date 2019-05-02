/// @description angle_to_360(angle,facing)
/// @function angle_to_360
/// @param angle
/// @param facing

var angle = argument0;
var facing = argument1;

// Flip
if facing = -1 {
    angle = 180 - angle;
}

return angle;
