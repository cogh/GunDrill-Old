/// @description angle_to_180(angle)
/// @function angle_to_180
/// @param angle

var angle = argument0;

// Balance angle to bottom
angle = angle-90;

// Flip
if angle>90 && angle<270 {
    angle = 180 - angle;
}

return angle;
