/// @description  Step

// Not using this object for a while
//timer++

if timer = 10 {
    instance_activate_all();
    // Deactivate outside of screen
    instance_deactivate_region(__view_get( e__VW.XView, 0 )-64,__view_get( e__VW.YView, 0 )-64,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+64,false,true);
    instance_activate_region(__view_get( e__VW.XView, 0 )-64,__view_get( e__VW.YView, 0 )-64,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+64,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+128,true);
    // Reactivate important shit
    instance_activate_object(obj_gui);
    instance_activate_object(obj_commands);
    instance_activate_object(obj_train_door);
    instance_activate_object(obj_train_platform);
    instance_activate_object(obj_train);
    instance_activate_object(obj_enemy);
    instance_activate_object(obj_transition_open);
    instance_activate_object(obj_transition_close);
    instance_activate_object(obj_view);
    instance_activate_object(obj_player);
    instance_activate_object(obj_camera);
    
    // Deactivate all moving objects
    // Reactivate within a smaller range
    
    timer = 0;
}

