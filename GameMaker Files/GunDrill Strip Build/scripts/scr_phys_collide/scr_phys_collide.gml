/// @description scr_phys_collide()
/// @function scr_phys_collide

// Check for solid, horizontal
if place_meeting(x+hsp,y,par_solid) {
    // Slope up
    var yplus = 0;
    while yplus < 2 && place_meeting(x+hsp,y-yplus,par_solid) {
        yplus++;
    }
    // Normal collision if yplus failure
    if !place_meeting(x+hsp,y-yplus,par_solid) {
        y -= yplus;
    }
    else {
        while !place_meeting(x+sign(hsp),y,par_solid) {
            x += sign(hsp);
        }
        hsp = 0;
    }
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

// Platform
var plat = instance_place(x,y+vsp,par_platform);
if instance_exists(plat) {
    if !grounded && vsp > 0 {
        plat.vsp = vsp
    }
    if bbox_bottom < plat.bbox_top {
        while !place_meeting(x,y+sign(vsp),plat) {
            y += sign(vsp);
        }
        vsp = 0;
    }
}

// Apply vertical
y += vsp;

// Shunt
if place_meeting(x+shunt_x,y,par_solid) {
    while !place_meeting(x+sign(shunt_x),y,par_solid) {
        x += sign(shunt_x);
    }
    shunt_x = 0;
}
x += shunt_x;
shunt_x = 0;