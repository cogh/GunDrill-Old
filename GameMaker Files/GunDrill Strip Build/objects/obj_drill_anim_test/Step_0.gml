/// @description Insert description here
// You can write your code in this editor

// Drill speed
if keyboard_check(ord("Z")) {
	if drill_speed < drill_speed_max {
		drill_speed += drill_acceleration;
	}
}
drill_speed -= drill_speed*drill_speed_drag;

// Open/close
if keyboard_check_pressed(ord("X")) {
	if drill_open = true {
		drill_open = false;
	}
	else {
		drill_open = true;
	}
}
if drill_open && index < 4 {
	index += 0.1;
}
if !drill_open && index > 1 {
	index -= 0.1;
}

// Sprite index
sprite_index = sprite[index];
if (drill_speed < 0.1) && round(index) = 1
{
	//sprite_index = sprite[0];
}

// Image speed
image_speed = drill_speed;