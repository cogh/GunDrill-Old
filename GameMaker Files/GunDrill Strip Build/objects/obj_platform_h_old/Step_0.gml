/// @description  Step

// Find hsp according to state
switch state {
    case "left":
        if x > (origin_x-move_range) {
            hsp = -1;
        }
        else {
            state = "right";
        }
        break;
    case "right":
        if x < (origin_x+move_range) {
            hsp = 1;
        }
        else {
            state = "left";
        }
        break;
}

// Find passenger
if rectangle_in_rectangle(
bbox_left,bbox_top-1,bbox_right,bbox_top-1,
obj_player.bbox_left,obj_player.bbox_bottom,obj_player.bbox_right,obj_player.bbox_bottom) {
    if passenger = noone {
        passenger = instance_find(obj_player,0);
    }
}
else {
    passenger = noone;
}

// Apply hsp
x += hsp;
if passenger != noone {
passenger.shunt_x = hsp;
    with passenger {
        if !place_meeting(x+shunt_x,y,par_solid) {
            x += shunt_x;
        }
    }
}

