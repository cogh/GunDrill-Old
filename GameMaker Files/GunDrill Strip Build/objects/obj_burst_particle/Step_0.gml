/// @description  temp

// Break shit
if timer = 1 {
    // Breakable
	var _breakables = ds_list_create();
    collision_rectangle_list(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_breakable,true,0,_breakables,0);
    for (i=0; i<ds_list_size(_breakables); i++) {
        _breakables[| i].dead = true;
    }
    ds_list_destroy(_breakables);
    
    // Gem
    var _gems = ds_list_create();
	collision_rectangle_list(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_gemblock,true,0,_gems,0);
    for (i=0; i<ds_list_size(_gems); i++) {
        _gems[| i].dead = true;
    }
    ds_list_destroy(_gems);
    
    // Enemy
    var _enemies = ds_list_create();
	collision_rectangle_list(bbox_left,bbox_top,bbox_right,bbox_bottom,par_enemy,true,0,_enemies,0);
    for (i=0; i<ds_list_size(_enemies); i++) {
        var enemy = _enemies[| i];
        scr_send_damage(enemy,1*5,0);
    }
    ds_list_destroy(_enemies);
}
timer++;

// Position
x = obj_player.x + obj_player.shot_x;
y = obj_player.y + obj_player.shot_y;

// Destroy at end of animation
if image_index+image_speed > image_number {
    instance_destroy();
}

