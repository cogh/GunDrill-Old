/// @description Insert description here
// You can write your code in this editor

// Create animation array
sprite[0] = spr_drilltest_static;
sprite[1] = spr_drilltest_closed;
sprite[2] = spr_drilltest_open1;
sprite[3] = spr_drilltest_open2;
sprite[4] = spr_drilltest_open3;

// Set index
index = 1;

// Set drill stats
drill_speed = 0;
drill_speed_max = 1;
drill_speed_drag = 0.02;
drill_acceleration = 3 / room_speed;
drill_open = false;