/// @description Insert description here
// You can write your code in this editor

// Set coordinates for buttons
var _x, _y, _list_size = ds_list_size(button_list), _button;
for (var _i = 0; _i < _list_size ; _i++) {
	var _leading = obj_camera.cam_h / _list_size;
	_x = obj_camera.cam_x + (obj_camera.cam_w / 2);
	_y = (_leading/2) + obj_camera.cam_y + (_leading * _i);
	_button = button_list[| _i];
	_button[? "x"] = _x;
	_button[? "y"] = _y;
	_button[? "x1"] = _x - (string_width(_button[?"text"])/2);
	_button[? "y1"] = _y - (string_height(_button[?"text"])/2);
	_button[? "x2"] = _x + (string_width(_button[?"text"])/2);
	_button[? "y2"] = _y + (string_height(_button[?"text"])/2);
}

// Check collisions
for (var _i = 0; _i < _list_size ; _i++) {
	_button = button_list[| _i];
	if (point_in_rectangle(mouse_x,mouse_y,_button[?"x1"],_button[?"y1"],_button[?"x2"],_button[?"y2"])) {
		_button[?"hovered"] = true;
	}
	else {
		_button[?"hovered"] = false;
	}
}

// Run collided buttons
for (var _i = 0; _i < _list_size ; _i++) {
	_button = button_list[| _i];
	if (_button[?"hovered"] = true) {
		_button[?"colour"] = c_red;
		if mouse_check_button_pressed(mb_left) {
			script_execute(_button[?"script"]);
		}
	}
	else {
		_button[?"colour"] = c_white;
	}
}