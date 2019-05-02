/// @description Camera movement and shake

if shake_trigger {
    shake_trigger = false;
    shake_enabled = true;
    shake_timer = 10;
}
shake_timer -= 1;
if shake_timer < 0 {
    shake_enabled = false;
}

//Initialize variables
var cam_speed = 20;
var shake_x = 0;
var shake_y = 0;

//Adding shake when enabled
if (shake_enabled) {
    shake_x = irandom_range(-3, 3);
    shake_y = irandom_range(-3, 3);
}
if shake_enabled && train_shake {
    shake_x = 0
    shake_y = irandom_range(-1, 1);
}

//Following player
if (instance_exists(obj_player)) {
    target_x = obj_player.x+(obj_player.facing*32);
    target_y = obj_player.y-32;
}
else if (instance_exists(obj_train)) {
    target_x = obj_train.x+64;
    target_y = obj_train.y - y;
}
x += (target_x - x) / cam_speed;
y += (target_y - y) / cam_speed;

//Pull view with camera
__view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 ) / 2) + shake_x );
__view_set( e__VW.YView, 0, y - (__view_get( e__VW.HView, 0 ) / 2) + shake_y );

//Clamp view
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ),0,room_width-__view_get( e__VW.WView, 0 ) ));
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ),0,room_height-__view_get( e__VW.HView, 0 ) ));

