/// @description Insert description here
// You can write your code in this editor

// Rotate angle
if gripped {
	grip_angle += sign(angle_difference(grip_target.grip_angle,grip_angle))*rotate_speed;
}