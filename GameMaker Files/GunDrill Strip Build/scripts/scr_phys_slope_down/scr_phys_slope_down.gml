/// @description scr_phys_slope_down()
/// @function scr_phys_slope_down

if place_meeting(x,y+1,par_solid) {
    if !place_meeting(x+hsp,y+2,par_solid) 
    && !place_meeting(x+hsp,y+2,par_platform) {
        y += 2;
    }
    else if !place_meeting(x+hsp,y+1,par_solid)
    && !place_meeting(x+hsp,y+1,par_platform) {
        y += 1;
    }
}
