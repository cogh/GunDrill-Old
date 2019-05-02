/// @description  Step

// Move state stuff
switch state {
    case "idle":
        image_index = 0;
        image_speed = 0;
        if point_distance(x,0,obj_player.x,0) < 64
        && point_distance(0,y,0,obj_player.y) < 64 { state = "move"; }
        break;
    case "move":
        image_index = 0;
        //var dir = sign(obj_player.x-x);
        var dir = choose(-1,1);
        if !place_meeting(x+dir,y,par_solid) 
        && !place_meeting(x+dir,y,par_enemy) 
        && point_distance(x,y,obj_player.x,obj_player.y) > 8 
        && place_meeting(x+dir,y-1,par_solid) {
            x += dir;
        }
        if point_distance(x,0,obj_player.x,0) > 64
        or point_distance(0,y,0,obj_player.y) > 64 { state = "idle"; }
}

// Process damage packets
scr_process_damage();

// Damage player
if place_meeting(x,y,obj_player) {
    health_change(-1);
}

// Die
if hp <= 0 {
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

