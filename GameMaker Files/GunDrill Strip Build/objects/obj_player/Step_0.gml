/// @description  Step event

// Get input
if gamepad_is_connected(0) {
    scr_input();
}
else {
    scr_input_keyboard();
}

// Check stuff
scr_touching();

// Run state
script_execute(state);

// Invul
invul = clamp(invul-(1/room_speed),0,100);

// Fix mask
if gun_dir != 270 or gun_state != st_gun_drill { mask_index = mask_player; }

// Clamp/kill
scr_clamp_in_room();

// Hit
if hit = true {
	hp -= 1;
}

// Dead
if hp <= 0 {
	var _corpse = instance_create(x-obj_camera.cam_x,y-obj_camera.cam_y,obj_player_dead);
	_corpse.hsp = -facing*1.5;
	_corpse.vsp = -2;
	_corpse.facing = facing;
	_corpse.return_room = room;
}

// Sounds
sound_list = ds_list_create();