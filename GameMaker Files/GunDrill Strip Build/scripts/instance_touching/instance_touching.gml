/// @description instance_touching(x_side,y_side,parent)
/// @function instance_touching
/// @param x_side
/// @param y_side
/// @param parent

var x_side = argument0;
var y_side = argument1;
var par = argument2;
var x1,y1,x2,y2;

switch x_side {
    case -1:
        x1 = bbox_left-1;
        x2 = bbox_left-1;
        break;
    case 0:
        x1 = bbox_left;
        x2 = bbox_right;
        break;
    case 1:
        x1 = bbox_right+1;
        x2 = bbox_right+1;
        break;
}

switch y_side {
    case -1:
        y1 = bbox_top-1;
        y2 = bbox_top-1;
        break;
    case 0:
        y1 = bbox_top;
        y2 = bbox_bottom;
        break;
    case 1:
        y1 = bbox_bottom+1;
        y2 = bbox_bottom+1;
        break;
}

return collision_rectangle(x1,y1,x2,y2,par,true,true);
