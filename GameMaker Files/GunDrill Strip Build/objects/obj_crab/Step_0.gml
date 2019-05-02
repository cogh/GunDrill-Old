/// @description Insert description here
// You can write your code in this editor

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// State
switch state {
	case "idle":
		image_speed = 0;
		image_index = 0;
		hsp = 0;
		if obj_timer.click {
			state = choose("left","right");
		}
		break;
	case "left":
		image_speed = 24 / room_speed;
		hsp = -move_speed;
		if !collision_point(bbox_left-1,bbox_bottom+1,par_solid,0,0) {
			hsp = 0;
			state = "idle";
		}
		if obj_timer.click {
			state = choose("idle");
		}
		break;
	case "right":
		image_speed = 24 / room_speed;
		hsp = move_speed;
		if !collision_point(bbox_right+1,bbox_bottom+1,par_solid,0,0) {
			hsp = 0;
			state = "idle";
		}
		if obj_timer.click {
			state = choose("idle");
		}
		break;
}

// Physics
vsp = clamp(vsp+grav_speed,-10,10);
scr_phys_slope_down();
scr_phys_collide();
scr_phys_clip_fix();

// Die
scr_die();