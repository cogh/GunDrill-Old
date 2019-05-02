/// @description  Step

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

