/// @description scr_viable_block(type,range)
/// @function scr_viable_block
/// @param type
/// @param range

// Arguments
type = argument0;
range = argument1;

// Get nearby blocks
var _list = ds_list_create();
collision_rectangle_list(x-(range/2),y-(range/2),x+(range/2),y+(range/2),obj_solid,true,0,_list,0);

// Remove ones without space
for (i=0; i<ds_list_size(_list); i++) {
    var inst = _list[| i];
    if scr_check_adj(inst,1,0)
    and scr_check_adj(inst,0,1)
    and scr_check_adj(inst,-1,0)
    and scr_check_adj(inst,0,-1) {
        ds_list_delete(_list,i);
        i--;
    }
}

// Choose at random
var inst = _list[| irandom_range(0,ds_list_size(_list)-1)];

// Destroy list
ds_list_destroy(_list);

// Return block
return inst;
