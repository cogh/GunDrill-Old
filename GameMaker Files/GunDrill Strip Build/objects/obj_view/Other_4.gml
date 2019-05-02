/// @description  Room start


// Set view capture height (old was 16*16
view_height = 16*12;

// Find screen specs
window_width = display_get_width();
window_height = display_get_height();

// Get upscale for 16 blocks
port_scale = floor(window_height/view_height);

// Set view capture width
view_width = view_height * (window_width/window_height);

// Set port
port_width = view_width * port_scale;
port_height = view_height * port_scale;

// Set window
window_width = port_width;
window_height = port_height;

// Resize actual values
window_set_size(window_width,window_height);
__view_set( e__VW.WView, 0, view_width );
__view_set( e__VW.HView, 0, view_height );
surface_resize(application_surface,port_width,port_height);


// Weird window centre stuff
alarm[0] = 1;

