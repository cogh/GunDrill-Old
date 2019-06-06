/// @description Insert description here
// You can write your code in this editor

// Create button list
button_list = ds_list_create();

// Create start demo button
var _button = ds_map_create();
ds_map_add(_button,"text","Start Demo");
ds_map_add(_button,"x",0);
ds_map_add(_button,"y",0);
ds_map_add(_button,"x1",0);
ds_map_add(_button,"y1",0);
ds_map_add(_button,"x2",0);
ds_map_add(_button,"y2",0);
ds_map_add(_button,"colour",c_white);
ds_map_add(_button,"hovered",false);
ds_map_add(_button,"script",scr_start_demo);
ds_list_add(button_list,_button);

// Create options button
var _button = ds_map_create();
ds_map_add(_button,"text","Options");
ds_map_add(_button,"x",0);
ds_map_add(_button,"y",0);
ds_map_add(_button,"x1",0);
ds_map_add(_button,"y1",0);
ds_map_add(_button,"x2",0);
ds_map_add(_button,"y2",0);
ds_map_add(_button,"colour",c_white);
ds_map_add(_button,"hovered",false);
ds_map_add(_button,"script",scr_start_demo);
ds_list_add(button_list,_button);

// Create start demo button
var _button = ds_map_create();
ds_map_add(_button,"text","Exit");
ds_map_add(_button,"x",0);
ds_map_add(_button,"y",0);
ds_map_add(_button,"x1",0);
ds_map_add(_button,"y1",0);
ds_map_add(_button,"x2",0);
ds_map_add(_button,"y2",0);
ds_map_add(_button,"colour",c_white);
ds_map_add(_button,"hovered",false);
ds_map_add(_button,"script",scr_end_game);
ds_list_add(button_list,_button);