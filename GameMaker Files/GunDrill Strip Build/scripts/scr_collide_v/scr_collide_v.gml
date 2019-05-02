/// @description scr_collide_v()
/// @function scr_collide_v

while !place_meeting(x,y+sign(vsp),par_solid) {
    y += sign(vsp);
}
vsp = 0;
