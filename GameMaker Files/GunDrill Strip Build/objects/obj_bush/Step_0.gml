/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,obj_player) {
	image_speed = 48 / room_speed;
	timer = 0.5;
}
timer -= 1 / room_speed;

if timer <= 0 {
	image_speed = 24 / room_speed;
}