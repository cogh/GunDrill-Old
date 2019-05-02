/// @description Insert description here
// You can write your code in this editor

// Input
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_left = keyboard_check(vk_left);
key_down = keyboard_check(vk_down);
key_drill = keyboard_check(vk_space);
inp_angle = point_direction(0,0,key_right-key_left,key_down-key_up);

// Move ungripped
if (!gripped) 
{
	x += key_right-key_left;
	y += key_down-key_up;
}

// Grip
if !gripped && place_meeting(x,y,obj_drillgrip_joint) && key_drill
{
	// Set grip target
	gripped = true;
	grip_target = instance_place(x,y,obj_drillgrip_joint);
	// Attach
	x = grip_target.x;
	y = grip_target.y;
	grip_angle = grip_target.grip_angle;
	// Apply to grip target
	grip_target.gripped = true;
	grip_target.grip_target = id;
}

// Ungrip
if gripped && !key_drill 
{
	grip_target.grip_target = noone;
	grip_target.gripped = false;
	grip_target = noone;
	gripped = false;
}

// Rotate gripped
if gripped 
{
	// Get angle differences
	var _inp_angle_dif = angle_difference(inp_angle,grip_angle);
	var _joint_angle_dif = angle_difference(grip_angle,grip_target.grip_angle);
	var _joint_angle_origin_dif = angle_difference(grip_angle+sign(_inp_angle_dif)*rotate_speed,grip_target.grip_angle_origin);
	// Conditions
	var _angle_is_held = (abs(key_right-key_left) > 0 || abs(key_down-key_up) > 0)
	var _angle_is_significant = (_inp_angle_dif != 0 && abs(_inp_angle_dif) != 180)
	var _angle_is_within_minor_boundary = (abs(_joint_angle_dif) < grip_target.grip_minor_boundary)
	var _angle_is_within_major_boundary = (abs(_joint_angle_origin_dif) < grip_target.grip_major_boundary)
	// Change angle
	if _angle_is_held && _angle_is_significant 
	&& _angle_is_within_minor_boundary && _angle_is_within_major_boundary
	{
		grip_angle += sign(_inp_angle_dif)*rotate_speed;
	}
}

// Wrap grip angle
grip_angle = (grip_angle+360) % 360;








