/// @description Insert description here
// You can write your code in this editor

// State
switch state {
	case "idle":
		image_speed = 0;
		if trigger = true {
			state = "open";
			trigger = false;
		}
		break;
	case "open":
		sprite_index = spr_elevator_open;
		image_speed = 16 / room_speed;
		if image_index+image_speed>=image_number {
			state = "wait";
		}
		break;
	case "wait":
		sprite_index = spr_elevator_wait;
		image_speed = 0;
		with submask_bottom {
			if collision_adj(0,-1,obj_player)
			&& obj_player.bbox_left > bbox_left+4
			&& obj_player.bbox_right < bbox_right-4 {
				obj_elevator.state = "close";
				with obj_player { scr_state_set("frozen"); }
			}
		}
		break;
	case "close":
		sprite_index = spr_elevator_close;
		image_speed = 16 / room_speed;
		if image_index+image_speed>=image_number {
			state = "rise";
		}
		break;
	case "rise":
		image_speed = 0;
		y -= 1;
		if point_distance(0,y,0,obj_elevator_fall_trigger.y) < 8 {
			state = "fall";
		}
		break;
	case "fall":
		vsp += 0.05;
		y += vsp;
		with submask_bottom {
			//break blocks
			var _breakable = instance_place(x,y,obj_breakable_2);
			if instance_exists(_breakable) {
				_breakable.dead = true;
			}
			//keep player close
			obj_player.y = y + 32;
		}
		break;
}

// Move submasks
submask_top.x = x;
submask_top.y = y-1;
submask_doors.x = x;
submask_doors.y = y-1;
submask_bottom.x = x;
submask_bottom.y = y-1;
