/// @description Insert description here
// You can write your code in this editor

switch state {
	case "up":
		if state_timer = 0 {
			image_index = 0;
		}
		state_timer++;
		sprite_index = spr_spikeplat_up;
		var sx1 = bbox_left;
		var sy1 = bbox_bottom;
		var sx2 = bbox_right;
		var sy2 = bbox_bottom+4;
		var dx1 = obj_player.bbox_left;
		var dy1 = obj_player.bbox_top;
		var dx2 = obj_player.bbox_right;
		var dy2 = obj_player.bbox_bottom;
		if rectangle_in_rectangle(sx1,sy1,sx2,sy2,dx1,dy1,dx2,dy2) {
			health_change(-4);
		}
		if flip = true {
			state = "flip_down";
			state_timer = 0;
			flip = false;
		}
		break;
	case "flip_down":
		if state_timer = 0 {
			image_index = 0;
		}
		state_timer++;
		sprite_index = spr_spikeplat_flip_down;
		if image_index + image_speed >= image_number-1 {
			state = "down";
			state_timer = 0;
		}
		break;
	case "down":
		if state_timer = 0 {
			image_index = 0;
		}
		state_timer++;
		sprite_index = spr_spikeplat_down;
		// Send touch damage
		var sx1 = bbox_left;
		var sy1 = bbox_top-4;
		var sx2 = bbox_right;
		var sy2 = bbox_top;
		var dx1 = obj_player.bbox_left;
		var dy1 = obj_player.bbox_top;
		var dx2 = obj_player.bbox_right;
		var dy2 = obj_player.bbox_bottom;
		if rectangle_in_rectangle(sx1,sy1,sx2,sy2,dx1,dy1,dx2,dy2) {
			health_change(-4);
		}
		if state_timer = 120 {
			state = "flip_up";
			state_timer = 0;
		}
		break;
	case "flip_up":
		if state_timer = 0 {
			image_index = 0;
		}
		state_timer++;
		sprite_index = spr_spikeplat_flip_up;
		if image_index + image_speed >= image_number-1 {
			state = "up";
			state_timer = 0;
		}
		break;
}

if flip = true {
	flip = false;
}