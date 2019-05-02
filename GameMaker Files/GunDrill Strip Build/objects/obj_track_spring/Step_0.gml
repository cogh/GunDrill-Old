/// @description Insert description here
// You can write your code in this editor

switch state {
	case "idle":
		// Switch
		if gripped {
			state = "wind";
			vsp =5;
		}
		break;
	case "wind":
		image_speed += 32 / room_speed;
		if vsp > 0.05 {
			y += vsp;
			vsp *= 0.9;
		}
		else {
			vsp = -10;
			state = "fling";
		}
		break;
	case "fling":
		y += vsp;
		vsp *= 0.9;
		if vsp > -5 {
			if gripped {
				obj_player.vsp = -12.5;
				obj_player.grip_target = noone;
				obj_player.jetpack_charged = true;
				gripped = false;
			}
			grippable = false;
		}
		if vsp > -1 {
			vsp = 0;
			state = "reset";
		}
		break;
	case "reset":
		y = lerp(y,origin_y,0.05);
		if point_distance(0,y,0,origin_y) < 1 {
			y = origin_y;
			grippable = true;
			state = "idle";
		}
	break;
}

image_speed *= 0.95;
if image_speed > 64 {
	image_speed = 64;
}