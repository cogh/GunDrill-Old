/// @description  temp

// State machine
switch state {
    case "idle":
        image_index = 0;
        image_speed = 0;
        if irandom(60) = 0 {
            state = "crawl";
            xdir = choose(-1,1);
        }
        break;
    case "crawl":
        image_speed = 6 / room_speed
        if !place_meeting(x+xdir,y,par_solid) {
            x+=xdir;
        }
        if irandom(60) = 0 {
            state = "idle";
        }
        break;
}

// Damage
if place_meeting(x,y,obj_player) {
    //health_change(-1);
}

// Dead
if hp <= 0 {
    dead = true;
}
if dead = true {
    audio_play_sound(sb_enemy_death,0,0);
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

