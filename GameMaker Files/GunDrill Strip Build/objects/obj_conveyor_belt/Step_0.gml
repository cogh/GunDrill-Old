/// @description Insert description here
// You can write your code in this editor

// Find hsp according to state
switch state {
    case "left":
        hsp = -1;
        break;
    case "right":
        hsp = 1;
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
if passenger != noone {
	passenger.shunt_x = hsp;
}