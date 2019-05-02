/// @description Insert description here
// You can write your code in this editor

time += spd;

if time >= 1 {
	time = 0;
	click = true;
}
else if click = true {
	click = false; 
}

if keyboard_check(vk_left) {
	spd = lerp(spd,0.3/room_speed,0.1);
}
if keyboard_check(vk_right) {
	spd = lerp(spd,1.5/room_speed,0.1);
}