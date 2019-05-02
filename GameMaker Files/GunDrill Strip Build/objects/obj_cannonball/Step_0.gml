/// @description  Step

noclip_timer--;

hsp = -1;

if state = "roll" {
    if place_meeting(x+hsp,y,par_solid) && noclip_timer <= 0 {
        while !place_meeting(x+sign(hsp),y,par_solid) {
            x += sign(hsp);
        }
        hsp = 0;
        state = "dead";
    }
}
x += hsp;

if place_meeting(x,y,obj_player) {
    health_change(-1);
}

if state = "dead" or hp <= 0 {
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

