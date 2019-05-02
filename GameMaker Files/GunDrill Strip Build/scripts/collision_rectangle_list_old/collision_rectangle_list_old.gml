/// @description collision_rectangle_list_old(x1,y1,x2,y2,obj)
/// @function collision_rectangle_list_old
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param obj

// Arguments
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var obj = argument4;

// Create list
var instance_list = ds_list_create();

for (i=0; i<instance_number(obj); i++) {
    var inst = instance_find(obj,i);
    if collision_rectangle(x1,y1,x2,y2,inst,0,0) {
        ds_list_add(instance_list,inst);
    } 
}

return instance_list;
