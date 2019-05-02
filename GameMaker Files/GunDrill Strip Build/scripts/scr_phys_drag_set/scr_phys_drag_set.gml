/// @description scr_phys_drag_set()
/// @function scr_phys_drag_set

// Grounded
if grounded {
    drag_h = drag_ground;
    drag_v = drag_ground;
}
else {
    drag_h = drag_air;
    drag_v = drag_air;
}

// Liquid
if place_meeting(x,y,par_liquid) {
    drag_h = max(drag_air*5,drag_h);
    drag_v = max(drag_air*5,drag_v);
}
