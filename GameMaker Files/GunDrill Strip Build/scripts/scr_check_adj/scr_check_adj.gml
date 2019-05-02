/// @description scr_check_adj(id,x,y)
/// @function scr_check_adj
/// @param id
/// @param x
/// @param y

// Arguments
var inst = argument0;
var xx = argument1;
var yy = argument2;

// Coords
var x1,y1,x2,y2;

// Find x area
switch xx {
    case -1:
        x1 = inst.bbox_left-1;
        x2 = inst.bbox_left-1;
        break;
    case 0:
        x1 = inst.bbox_left+1;
        x2 = inst.bbox_right-1;
        break;
    case 1:
        x1 = inst.bbox_right+1;
        x2 = inst.bbox_right+1;
        break;
}

// Find y area
switch xx {
    case -1:
        y1 = inst.bbox_top-1;
        y2 = inst.bbox_top-1;
        break;
    case 0:
        y1 = inst.bbox_top+1;
        y2 = inst.bbox_bottom-1;
        break;
    case 1:
        y1 = inst.bbox_bottom+1;
        y2 = inst.bbox_bottom+1;
        break;
}

// Check area
if collision_rectangle(x1,y1,x2,y2,par_solid,true,true) != noone {
    return true;
}
else {
    return false;
}
