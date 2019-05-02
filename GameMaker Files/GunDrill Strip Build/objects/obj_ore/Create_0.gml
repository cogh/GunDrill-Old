/// @description Insert description here
// You can write your code in this editor

collectable = false;
timer = 0;
image_speed = 6 / room_speed;
image_index = irandom(image_number);

x += choose(-4,-2,0,2,4);

phys_on = true;

grav = 10 / room_speed;