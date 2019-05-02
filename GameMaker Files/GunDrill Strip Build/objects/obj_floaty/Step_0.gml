/// @description  temp

// Get facing
facing = sign(obj_player.x - x);
image_xscale = facing;

// Get angle
angle = point_direction(x,y,obj_player.x,obj_player.y);

// Angle as facing equivalent
if angle > 90 && angle < 270 {
    angle = 180 - angle;
}

// Round angle
angle = round_to(angle,45);

// Correct direct up/down
if angle = 90 {
    angle = 45;
}
if angle = 270 {
    angle = 315;
}

// Change sprite dependent on angle
switch angle {
    case 0:
        image_index = 0;
        break;
    case 45:
        image_index = 1;
        break;
    case 315:
        image_index = 2;
        break;
    default:
        //nothing
        break;
}

// Shoot
shot_timer++;
if shot_timer = 120 {
    if point_distance(x,y,obj_player.x,obj_player.y) < 128 {
        scr_floaty_shoot();      
    }
    shot_timer = 0;
}

// Damage player
if place_meeting(x,y,obj_player) {
    health_change(-1);
}

// Death
if dead = true or hp <= 0 {
    audio_play_sound(sb_enemy_death,0,0);
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

