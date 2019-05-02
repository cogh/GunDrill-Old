/// @description Insert description here
// You can write your code in this editor

// Create player
var _player = instance_create(x,y,obj_player);

// Move player to door
for (var _i=0; _i<instance_number(obj_door); _i++) {
	var _door = instance_find(obj_door,_i);
	if _door.name = target_name {
		_player.x = lerp(_door.bbox_left,_door.bbox_right,0.5);
		_player.y = lerp(_door.bbox_top,_door.bbox_bottom,0.5);
	}
	obj_camera.cam_x = _player.x;
	obj_camera.cam_y = _player.y;
}

// Move from first
if room = r_ini {
	room_goto_next();
}