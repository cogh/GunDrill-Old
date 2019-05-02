/// @description get_nearest(val)
/// @function get_nearest
/// @param val

var val = argument0;
var arg_list = ds_list_create();

var i, arg;
for (i=1; i<argument_count; i++) {
    ds_list_add(arg_list,argument[i]);
}

/*

For each argument

Check how near

Take the min() and return, delete list(s)

*/

return round(val/factor)*factor;
