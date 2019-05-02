/// @description scr_phys_passenger()
/// @function scr_phys_passenger

// Detect passenger
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
if passenger != noone {
	passenger.shunt_x = hsp;
    with passenger {
        if !place_meeting(x+shunt_x,y,par_solid) {
            x += shunt_x;
        }
    }
}


// Apply vsp
if passenger != noone {
	passenger.shunt_y = vsp;
    with passenger {
        if !place_meeting(x,y+shunt_y,par_solid) {
            y += shunt_y;
        }
    }
}
