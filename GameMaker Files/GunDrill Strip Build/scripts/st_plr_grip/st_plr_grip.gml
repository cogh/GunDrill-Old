/// @description st_plr_grip()
/// @function st_plr_grip

// Initialise
if state_timer = 0 {
    // Sprite
    draw_body = true;
    draw_jetpack = false;
    draw_gun = false;
}
state_timer++;

// Physics
if grip_target != noone {
	var _dist = point_distance(x,y,grip_target.x,grip_target.y);
	var _dir = point_direction(x,y,grip_target.x,grip_target.y);
	hsp = lengthdir_x(_dist,_dir);
	vsp = lengthdir_y(_dist,_dir);
}
hsp *= 0.5;
vsp *= 0.5;
scr_phys_collide();

// Gun
//script_execute(gun_state);

// Jetpack
script_execute(jetpack_state);

// Facing
//scr_facing();

// Transition
if !inp_drill {
	scr_state_set("air");
}
if grip_target = noone {
	scr_state_set("air");
}

// Sprite
sprite_index = spr_player_ground;
