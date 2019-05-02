/// @description st_plr_wall()
/// @function st_plr_wall

// Initialise
if state_timer = 0 {
    //if sidled_right { facing = -1; }
    //if sidled_left { facing = 1; }
    last_gun_dir = gun_dir;
    gun_dir = 0;
    // Sprite
    draw_body = true;
    draw_jetpack = true;
    draw_gun = true;
}
state_timer++;

// Physics
scr_phys_all();

// Gun
script_execute(gun_state);

// Jetpack
script_execute(jetpack_state);

// No Facing

// Transition
if !sidled_left and !sidled_right {
    scr_state_set("air");
    gun_dir = last_gun_dir;
}
if obj_data.char_hp <= 0 {
    scr_state_set("dead");
}

// Sprite
sprite_index = spr_player_wall;
