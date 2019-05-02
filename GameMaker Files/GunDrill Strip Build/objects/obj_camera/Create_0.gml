/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

// Old cam size
//cam_w = 360;
//cam_h = 240;


// Set up camera
view_enabled = true;
camera = camera_create();
view_set_visible(0, true);
view_set_camera(0, camera);
cam_scale = 4;

// Initialise camera size
cam_w = 336;
cam_h = 192;
camera_set_view_size(camera,cam_w,cam_h);
surface_resize(application_surface,cam_w,cam_h);

// Initialise camera pos
cam_x = 0;
cam_y = 0;
camera_set_view_pos(camera,0,0);

// Set window size
window_set_size(cam_w*cam_scale,cam_h*cam_scale)
window_x = (display_get_width()/2)-(window_get_width()/2);
window_y = (display_get_height()/2)-(window_get_height()/2);
window_set_position(window_x,window_y);

// Screen shake
shake = 0;

// Alarm
alarm[0] = 1;
