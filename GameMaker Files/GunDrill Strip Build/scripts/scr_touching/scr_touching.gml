/// @description scr_touching()
/// @function scr_touching

// Grounded
if place_meeting(x,y+1,par_solid) 
or (collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,par_platform,true,true) && !place_meeting(x,y,par_platform)) {
    grounded = true;
}
else {
    grounded = false;
}

// Sidling
if place_meeting(x+1,y,par_solid) {
    sidled_right = true;
}
else {
    sidled_right = false;
}
if place_meeting(x-1,y,par_solid) {
    sidled_left = true;
}
else {
    sidled_left = false;
}
