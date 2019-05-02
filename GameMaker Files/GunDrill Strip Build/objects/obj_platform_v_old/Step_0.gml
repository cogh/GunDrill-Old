/// @description  Step

switch state {
    case "up":
        if y > (origin_y-move_range) {
            vsp = -1;
        }
        else {
            state = "down";
        }
        break;
    case "down":
        if y < (origin_y+move_range) {
            vsp = 1;
        }
        else {
            state = "up";
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
y += vsp;
if passenger != noone {
passenger.shunt_y = vsp;
    with passenger {
        if !place_meeting(x,y+shunt_y,par_solid) {
            y += shunt_y;
        }
    }
}

