/// @description  Step

// Activation
if place_meeting(x,y,obj_player) && gamepad_button_check_pressed(0,gp_face2) {
    active = true;
    obj_train_platform.state = "dismiss";
    obj_train_platform.state_timer = 0;
}

