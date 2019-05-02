/// @description scr_phys_collide_enemy()
/// @function scr_phys_collide_enemy

// Check for solid, horizontal
if place_meeting(x+hsp,y,par_solid) {
    while !place_meeting(x+sign(hsp),y,par_solid) {
        x += sign(hsp);
    }
    hsp = 0;
}

// Apply horizontal
x += hsp;

// Check for solid, vertical
if place_meeting(x,y+vsp,par_solid) {
    while !place_meeting(x,y+sign(vsp),par_solid) {
        y += sign(vsp);
    }
    vsp = 0;
}



// Apply vertical
y += vsp;
