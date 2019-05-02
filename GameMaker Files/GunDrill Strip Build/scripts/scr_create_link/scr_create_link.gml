/// @function scr_create_link(node_1,node_2)
/// @desc Creates a link between two nodes and returns the corresponding ds_map
/// @arg node_1
/// @arg node_2

// Arguments
var _node_1 = argument0;
var _node_2 = argument1;

// Position
var _x = lerp(_node_2.x,_node_1.x,0.5);
var _y = lerp(_node_2.y,_node_1.y,0.5);

var _link = instance_create(_x,_y,obj_track_link);
_link.node_1 = _node_1;
_link.node_2 = _node_2;

return _link;