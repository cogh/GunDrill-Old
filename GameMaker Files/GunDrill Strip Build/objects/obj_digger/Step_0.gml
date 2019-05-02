/// @description Insert description here
// You can write your code in this editor

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Proximity check
in_proximity = point_in_rectangle(obj_player.x,obj_player.y,origin_x-96,origin_y-96,origin_x+96,origin_y+96);

// State
switch state {
	case "hidden":
		image_speed = 0;
		image_index = 0;
		hsp = 0;
		vsp = 0;
		if in_proximity or trig_took_dmg {
			state = "emerge";
		}
		break;
	case "emerge":
		obj_camera.shake = 1;
		image_speed = 24 / room_speed;
		hsp += xdir*move_speed;
		vsp += ydir*move_speed;
		if !place_meeting(x+hsp,y+vsp,par_solid) {
			hsp = 0;
			vsp = 0;
			state = "exposed";
			timer = 0;
		}
		break;
	case "exposed":
		timer++;
		image_speed = 24 / room_speed;
		if !in_proximity && timer >= 30 {
			state = choose("hide");
		}
		break;
	case "hide":
		image_speed = 24 / room_speed;
		hsp -= xdir*move_speed;
		vsp -= ydir*move_speed;
		if round(x) = round(origin_x) && round(y) = round(origin_y) {
			state = "hidden";
		}
		break;
}

trig_took_dmg = false;

// Physics
//vsp = clamp(vsp+grav_speed,-10,10);
//scr_phys_slope_down();
//scr_phys_collide();
//scr_phys_clip_fix();
x += hsp;
y += vsp;

// Die
scr_die();