/// @description  Step

// Move
x += lengthdir_x(vel,dir);
y += lengthdir_y(vel,dir);

// Damage
if place_meeting(x,y,obj_player) {
    health_change(-1);
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

// Hit wall
if place_meeting(x,y,par_solid) {
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

