/// @description  Step


// Enter
if place_meeting(x,y,obj_player) && gamepad_button_check_pressed(0,gp_face2) && open {
    with obj_player {
        instance_destroy();
        //view_object[0] = obj_train;
        //obj_switch_dismiss.active = true;
        obj_train_platform.state = "dismiss";
        obj_train_platform.state_timer = 0;
    }
}

