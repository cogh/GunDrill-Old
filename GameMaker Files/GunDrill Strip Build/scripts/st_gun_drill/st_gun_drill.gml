/// @description st_gun_active()
/// @function st_gun_active
if gun_state_timer = 0 {
    gun_shot_timer = 1;
    drillsound = audio_play_sound(sb_drill,0,true);
    audio_play_sound(sb_drill_start,0,false);
    
    // Displace from solids during drillride
    if gun_dir = 270 {
        mask_index = mask_drillride
        if place_meeting(x,y,par_solid) or place_meeting(x,y,par_platform) {
            while place_meeting(x,y,par_solid) or place_meeting(x,y,par_platform) {
                y -= 1;
            }
        }
    }
	
	// Initialise grip parent
	grip_target = noone;
}
gun_state_timer++;

// Find gun position
var shot_x = scr_gun_xoffset();
var shot_y = scr_gun_yoffset();

// Set dir
scr_gun_dir();

// Drillride
if gun_dir = 270 {
    // Sparks
    if grounded && !instance_exists(obj_drillsparks) { 
        instance_create(x,y,obj_drillsparks);
    }
}

// Kill enemies
var collision = collision_rectangle(x+shot_x-10,y+shot_y-6,x+shot_x+8,y+shot_y+7,par_enemy,true,false);
if instance_exists(collision) {
    if gun_dir = 270 {
		if collision.invulnerable {
			vsp = -jump_vel*1;
            jetpack_charged = true;
            collision.flip = true;
            instance_create(x,y+16,obj_shot_splash_invul);
		}
        else if collision.intangible {
        }
        else {
            scr_send_damage(collision,1*5,0);
            vsp = -jump_vel*1;
            jetpack_charged = true;
            collision.flip = true;
        }
    }
}

// Drill break
scr_drill_break();

// Drillbounce on cart
var collision = collision_rectangle(x+shot_x-6,y+shot_y-6,x+shot_x+6,y+shot_y+6,obj_track_cart,true,false);
if instance_exists(collision) {
    if gun_dir = 270 {
		collision.msp = sign(collision.x-x)*2;
		collision.sprite_shake = 3;
        vsp = -jump_vel*1
        jetpack_charged = true;
    }
}

// grip
var _grippable_object = instance_place(x+shot_x,y+shot_y,obj_track_spring);
if instance_exists(_grippable_object) {
	if _grippable_object.grippable = true {
		grip_target = _grippable_object;
		grip_target.gripped = true;
	}
}

// Sprite
scr_gun_sprite();

// Transitions
if !inp_drill {
    audio_play_sound(sb_drill_stop,0,false);
    audio_stop_sound(drillsound);
    gun_state = st_gun_idle;
    gun_state_timer = 0;
}
else if inp_burst {
    audio_play_sound(sb_drill_stop,0,false);
    audio_stop_sound(drillsound);
    gun_state = st_gun_burst;
    gun_state_timer = 0;
}
else if instance_exists(grip_target) {
	audio_play_sound(sb_drill_stop,0,false);
    audio_stop_sound(drillsound);
	if grip_target.grippable = true {
		scr_state_set("grip");
		gun_state = st_gun_grip;
		gun_state_timer = 0;
		jetpack_charged = true;
	}
}