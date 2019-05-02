/// @description scr_phys_clip_fix()
/// @function scr_phys_clip_fix

if place_meeting(x,y,par_solid) {
    while place_meeting(x,y,par_solid) {
        y -= 1;
    }
}
