/// @description Insert description here
// You can write your code in this editor

// Trigger
if trigger {
	room_end_timer = 1;
	trigger = false;
}

// Room start graphics
if (room_start_timer > 0) {
	room_start_timer *= 0.9;
}

// Room end graphics
if (room_end_timer > 0.1) {
	room_end_timer *= 0.9;
	if room_end_timer <= 0.1 {
		room_goto(target_room);
	}
}