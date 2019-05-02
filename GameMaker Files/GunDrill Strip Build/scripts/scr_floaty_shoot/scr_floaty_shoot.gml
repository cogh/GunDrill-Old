/// @description scr_floaty_shoot()
/// @function scr_floaty_shoot

// Get xdir toward player
var xdir = sign(obj_player.x-x);
if xdir = 0 { xdir = -1; }

// Get primary dir
if xdir = 1 {
    dir = 0;
}
if xdir = -1 {
    dir = 180;
}

// New way of doing primary dir
dir = round_to(point_direction(x,y,obj_player.x,obj_player.y),45);

// Shoot
var shot = instance_create(x,y,obj_enemy_shot);
shot.dir = dir - 45;
//var shot = instance_create(x,y,obj_enemy_shot);
//shot.dir = dir;
//var shot = instance_create(x,y,obj_enemy_shot);
//shot.dir = dir + 45;

