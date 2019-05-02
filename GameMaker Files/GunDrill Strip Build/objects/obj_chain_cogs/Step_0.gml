/// @description Insert description here
// You can write your code in this editor

if platform.state = "up" {
	image_speed = 60 / room_speed;
}
if platform.state = "down" {
	image_speed = -60 / room_speed;
}

image_speed = -platform.vsp;