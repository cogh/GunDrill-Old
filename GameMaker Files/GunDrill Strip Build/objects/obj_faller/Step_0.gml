/// @description Insert description here
// You can write your code in this editor

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// State
switch state {
	case "idle":
		if place_meeting(x,y+1,par_solid) { sprite_index = spr_faller_ground; }
		image_speed = 0;
		image_index = 0;
		hsp = 0;
		if place_meeting(x,y+1,par_solid)
		&& point_in_rectangle(obj_player.x,obj_player.y,bbox_left-92,bbox_top,bbox_right+92,bbox_bottom) {
			state = "dash";
		}
		if obj_timer.click {
			state = choose("left","right");
		}
		if abs(x-obj_player.x) < 32 && !place_meeting(x,y+1,par_solid) {
			state = "fall";
		}
		break;
	case "left":
		image_speed = 24 / room_speed;
		hsp = -move_speed;
		if place_meeting(x,y+1,par_solid)
		&& point_in_rectangle(obj_player.x,obj_player.y,bbox_left-92,bbox_top,bbox_right+92,bbox_bottom) {
			state = "dash";
		}
		if obj_timer.click {
			state = choose("idle");
		}
		if abs(x-obj_player.x) < 32 && !place_meeting(x,y+1,par_solid) {
			state = "fall";
		}
		if !place_meeting(x,y+1,par_solid)
		&& !place_meeting(x,y-1,par_solid) {
			state = "fall";
		}
		break;
	case "right":
		image_speed = 24 / room_speed;
		hsp = move_speed;
		if place_meeting(x,y+1,par_solid)
		&& point_in_rectangle(obj_player.x,obj_player.y,bbox_left-92,bbox_top,bbox_right+92,bbox_bottom) {
			state = "dash";
		}
		if obj_timer.click {
			state = choose("idle");
		}
		if abs(x-obj_player.x) < 32 && !place_meeting(x,y+1,par_solid) {
			state = "fall";
		}
		if !place_meeting(x,y+1,par_solid)
		&& !place_meeting(x,y-1,par_solid) {
			state = "fall";
		}
		break;
	case "dash":
		sprite_index = spr_faller_dash;
		image_speed = 24 / room_speed;
		hsp = sign(obj_player.x-x) * move_speed * 4;
		if !point_in_rectangle(obj_player.x,obj_player.y,bbox_left-92,bbox_top,bbox_right+92,bbox_bottom) {
			state = "idle";
		}
		if !place_meeting(x,y+1,par_solid)
		&& !place_meeting(x,y-1,par_solid) {
			state = "fall";
		}
		break;
	case "fall":
		image_speed = 24 / room_speed;
		sprite_index = spr_faller_falling;
		vsp = 64 / room_speed;
		hsp = 0;
		if place_meeting(x,y+1,par_solid) {
			sprite_index = spr_faller_ground;
			state = "idle";
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