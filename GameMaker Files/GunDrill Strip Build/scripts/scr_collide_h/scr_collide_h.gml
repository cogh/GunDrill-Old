/// @description scr_collide_h()
/// @function scr_collide_h

// Collide
while !place_meeting(x+sign(hsp),y,par_solid) {
    x += sign(hsp);
}
hsp = 0;
