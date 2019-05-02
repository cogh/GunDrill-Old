/// @description  Step

if state = "spawn" {
    x += lengthdir_x(1,spawn_dir);
    y += lengthdir_y(1,spawn_dir);
    if !place_meeting(x,y,par_solid) {
        state = "air";
    }
}

if state = "air" {
    if place_meeting(x,y,obj_player) {
        health_change(-1);
    }
    vsp += 1;
    scr_phys_collide_enemy();
    if place_meeting(x,y+1,par_solid) {
        state = "grounded";
    }
}

if state = "grounded" {
    if place_meeting(x,y,obj_player) {
        health_change(-1);
    }
    if irandom(60) = 0 { dir = choose(-1,0,1); }
    hsp = dir;
    if instance_exists(obj_player) { 
        if collision_rectangle(x-32,y-8,x+32,y+8,obj_player,0,0) {
            dir = sign(obj_player.x-x);
        }
    }
    scr_phys_collide_enemy();
    if !place_meeting(x,y+1,par_solid) {
        state = "air";
    }
}

// Health/death
if hp <= 0 {
    dead = true;
}
if dead = true {
    audio_play_sound(sb_enemy_death,0,0);
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

if point_distance(x,y,obj_camera.x,obj_camera.y) > 256 && instance_number(obj_enemy) > 5 {
    instance_destroy();
}

