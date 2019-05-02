if keyboard_check_pressed(ord("R")) {
    game_restart();
}

if keyboard_check_pressed(ord("N")) {
	room_goto(room_next(room));
}

if keyboard_check_pressed(vk_escape) {
    game_end();
}

if mouse_check_button_pressed(mb_left) {
	if instance_exists(obj_player) {
		obj_player.x = mouse_x;
		obj_player.y = mouse_y;
	}
}

if mouse_check_button_pressed(mb_right) {
	instance_create(mouse_x,mouse_y,obj_crab);
}