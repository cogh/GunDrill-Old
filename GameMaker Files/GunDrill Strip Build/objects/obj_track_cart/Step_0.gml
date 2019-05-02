/// @description Insert description here
// You can write your code in this editor

// State
switch state {
	case "fall":
		grav = clamp(grav+(5/room_speed),0,8);
		y += grav;
		var _i;
		var _inst = instance_nearest(x,y,obj_track_node);
		if point_distance(x,y,_inst.x,_inst.y) < 8 {
			parent_link = _inst.link_right;
			x = _inst.x;
			y = _inst.y;
			state = "ride";
		}
		break;
	case "ride":
		// Add move speed
		if keyboard_check_pressed(vk_right) {
			msp = 1.5;
		}
		if keyboard_check_pressed(vk_left) {
			msp = -1.5;
		}
		// Move
		var _dir = point_direction(parent_link.node_left.x,parent_link.node_left.y,parent_link.node_right.x,parent_link.node_right.y)
		x += lengthdir_x(msp,_dir);
		y += lengthdir_y(msp,_dir);
		// Movement drag
		msp *= 0.97;
		// End of link (right)
		if x > parent_link.node_right.x {
			// Switch link
			if parent_link.node_right.link_right != noone {
				parent_link = parent_link.node_right.link_right;
			}
			// End of track
			else {
				x = parent_link.node_right.x;
				y = parent_link.node_right.y;
			}
		}
		// End of link (left)
		if x < parent_link.node_left.x {
			// Switch link
			if parent_link.node_left.link_left != noone {
				parent_link = parent_link.node_left.link_left;
			}
			// End of track
			else {
				x = parent_link.node_left.x;
				y = parent_link.node_left.y;
			}
		}
}

// Dummy solid
dummy_solid.hsp = x - dummy_solid.x;
dummy_solid.vsp = y - dummy_solid.y;