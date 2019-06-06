/// @description Insert description here
// You can write your code in this editor

if (room_start_timer > 0) {
	var _x = 0, _y = 0, _scale = 0;
	for (_x = 0; _x < obj_camera.cam_w; _x += transition_padding) {
		for (_y = 0; _y < obj_camera.cam_h; _y += transition_padding) {
			// Scale/position
			var _draw_x = obj_camera.cam_x + (transition_padding/2) + _x;
			var _draw_y = obj_camera.cam_y + (transition_padding/2) + _y;
			_scale = (transition_padding) * room_start_timer;
		
			// Draw
			draw_set_colour(c_black);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_circle(_draw_x,_draw_y,_scale,false);
		}
	}
}

if (room_end_timer > 0.1) {
	var _x = 0, _y = 0, _scale = 0;
	for (_x = 0; _x < obj_camera.cam_w; _x += transition_padding) {
		for (_y = 0; _y < obj_camera.cam_h; _y += transition_padding) {
			// Scale/position
			var _draw_x = obj_camera.cam_x + (transition_padding/2) + _x;
			var _draw_y = obj_camera.cam_y + (transition_padding/2) + _y;
			_scale = (transition_padding) * (1-room_end_timer);
		
			// Draw
			draw_set_colour(c_black);
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_circle(_draw_x,_draw_y,_scale,false);
		}
	}
}







