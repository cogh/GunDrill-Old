/// @description Attaches to nodes
// You can write your code in this editor

// Get two most nearby nodes
var _first_nearest = instance_nth_nearest(x,y,obj_track_node,1);
var _second_nearest = instance_nth_nearest(x,y,obj_track_node,2);

// Define nodes by position
if _first_nearest.x < _second_nearest.x {
	node_left = _first_nearest;
	node_right = _second_nearest;
}
else {
	node_left = _second_nearest;
	node_right = _first_nearest;
}

// Give nodes link ID
node_left.link_right = id;
node_right.link_left = id;