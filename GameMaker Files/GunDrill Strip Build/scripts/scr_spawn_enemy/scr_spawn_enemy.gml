/// @description scr_spawn_enemy()
/// @function scr_spawn_enemy

// Create ds list
list = ds_list_create();

// Get nearby viable blocks
with(par_solid){
    if(scr_adj_free())
    && point_distance(x,y,obj_spawn_enemies.x,obj_spawn_enemies.y) < 256 
    && point_distance(x,y,obj_spawn_enemies.x,obj_spawn_enemies.y) > 96 {
        ds_list_add(obj_spawn_enemies.list,id);
    }
}

// Choose random block
var inst = list[| irandom_range(0, ds_list_size(list)-1)];

// Spawn enemy
var enemy = instance_create(inst.x+8,inst.y+8,obj_enemy);
