/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_player) {
	// Set target
	var _cam_target_x = obj_player.x-(cam_w/2);
	var _cam_target_y = obj_player.y-(cam_h/2);
	
	// Set _x _y
	cam_x = lerp(cam_x,_cam_target_x,0.1);
	cam_y = lerp(cam_y,_cam_target_y,0.1);

	// Clamp
	cam_x = clamp(cam_x,0,room_width-cam_w);
	cam_y = clamp(cam_y,0,room_height-cam_h);
	
	// Shake
	cam_x = cam_x+irandom_range(-shake,shake);
	cam_y = cam_y+irandom_range(-shake,shake);

	// Set cam pos
	camera_set_view_pos(camera,cam_x,cam_y);
}

// Zoom
if keyboard_check(vk_up) {
	cam_w = clamp(cam_w-cam_scale,0,room_width);
	cam_h = clamp(cam_h-cam_scale,0,room_height);
	camera_set_view_size(camera,cam_w,cam_h);
	if cam_w > 0 && cam_h > 0 {
		surface_resize(application_surface,cam_w,cam_h);
	}
}
if keyboard_check(vk_down) {
	cam_w = clamp(cam_w+cam_scale,0,room_width);
	cam_h = clamp(cam_h+cam_scale,0,room_height);
	camera_set_view_size(camera,cam_w,cam_h);
	surface_resize(application_surface,cam_w,cam_h);
}

// Fullscreen
if keyboard_check_pressed(ord("F")) {
	window_set_fullscreen(!window_get_fullscreen());
}

// Background
var _layer = layer_get_id("Background");
layer_x(_layer,cam_x*0.5);
layer_y(_layer,cam_y*0.5);

// Special room parallax
if room = r_old_colony_21 {
	// bg1
	var _layer = layer_get_id("Background_1");
	layer_x(_layer,cam_x*1);
	layer_y(_layer,cam_y*1);
	// bg1
	var _layer = layer_get_id("Background_2");
	layer_x(_layer,cam_x*0.75);
	layer_y(_layer,cam_y*1);
	// bg1
	var _layer = layer_get_id("Background_3");
	layer_x(_layer,cam_x*0.5);
	layer_y(_layer,cam_y*1);
	// bg1
	var _layer = layer_get_id("Background_4");
	layer_x(_layer,cam_x*0.25);
	layer_y(_layer,cam_y*1);
}

// Shake
shake = lerp(shake,0,0.2);



