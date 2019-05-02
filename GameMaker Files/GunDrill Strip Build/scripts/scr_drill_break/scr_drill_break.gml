/// @desc scr_drill_break

// Get shot position
var shot_x = scr_gun_xoffset();
var shot_y = scr_gun_yoffset();

// Create breakables list
var _breakables = ds_list_create();

// Add obj_breakable
collision_rectangle_list(x+shot_x-6,y+shot_y-6,x+shot_x+6,y+shot_y+6,obj_breakable,true,0,_breakables,0);

// Add gemblocks
collision_rectangle_list(x+shot_x-6,y+shot_y-6,x+shot_x+6,y+shot_y+6,obj_gemblock,true,0,_breakables,0);

// Drillbounce
if ds_list_size(_breakables) > 0
&& gun_dir = 270 {
    vsp = -jump_vel*1
    jetpack_charged = true;
}

// Destroy blocks
for (i=0; i<ds_list_size(_breakables); i++) {
    _breakables[| i].dead = true;
}
ds_list_destroy(_breakables);