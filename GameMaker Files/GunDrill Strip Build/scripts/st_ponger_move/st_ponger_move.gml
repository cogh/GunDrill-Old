/// @description st_ponger_move()
/// @function st_ponger_move

// Initialise
if (state_timer = 0) {
    sprite_index = spr_ponger;
    image_index = 0;
    image_speed = 0;
    
    dir = choose(45,135,225,315);
    switch dir {
        case 45:
            sprite_index = spr_ponger_ru;
            break;
        case 135:
            sprite_index = spr_ponger_ul;
            break;
        case 225:
            sprite_index = spr_ponger_ld;
            break;
        case 315:
            sprite_index = spr_ponger_dr;
            break;
    }
}
state_timer++;

// Action
scr_set_velocity(1,dir);

// Pong
if place_meeting(x+lengthdir_x(1,dir),y+lengthdir_y(1,dir),par_solid) {
    var new_dir = choose(45,135,225,315);
    while new_dir = dir { var new_dir = choose(45,135,225,315); }
    dir = new_dir;
    switch dir {
        case 45:
            sprite_index = spr_ponger_ru;
            break;
        case 135:
            sprite_index = spr_ponger_ul;
            break;
        case 225:
            sprite_index = spr_ponger_ld;
            break;
        case 315:
            sprite_index = spr_ponger_dr;
            break;
    }
    hsp = 0;
    vsp = 0;
}

// Apply speed
scr_apply_speed(hsp,vsp);

// Process damage
scr_process_damage();

// Send touch damage
scr_touch_damage();

// Die
scr_die();

// Transition
if (state_timer = 60) {
    //scr_state_set('state_2');
}
