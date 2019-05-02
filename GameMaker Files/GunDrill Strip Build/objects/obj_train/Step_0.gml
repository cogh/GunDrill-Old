/// @description  Step

// Move
x += hsp;
obj_train_door.x = x;

// Move player
var x1 = bbox_left;
var y1 = bbox_top-2;
var x2 = bbox_right;
var y2 = bbox_top;

if collision_rectangle(x1,y1,x2,y2,obj_player,false,true) {
    obj_player.x += hsp;
}

