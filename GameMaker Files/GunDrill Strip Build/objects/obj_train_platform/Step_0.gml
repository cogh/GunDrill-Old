/// @description  Step

// State
switch state {
    case "absent":
        if state_timer = 0 {
            // Turn off switches
            //obj_switch_call.active = false;
            //obj_switch_dismiss.active = false;
        }
        // Timer
        state_timer++;
        if state_timer = 60 {
            state = "call";
            state_timer = 0;
        }
        break;
    case "call":
        if state_timer = 0 {
            // create train
            instance_create(x-600,y,obj_train);
            obj_train.hsp = 2;
        }
        // Timer
        state_timer++;
        // Stop train at centre
        if (x-obj_train.x) < 8 {
            obj_train.hsp = 0;
            state = "present";
            state_timer = 0;
        }
        break;
    case "dismiss":
        if state_timer = 0 {
            // set train speed
            obj_train.hsp = 2;
            // Start transition
            //var trans = instance_create(x,y,obj_transition_close);
            //trans.destination = r_travel_sim;
        }
        // Timer
        state_timer++;
        // If train gone, delete
        if obj_train.x > x+300 {
            var trans = instance_create(x,y,obj_transition_close);
            trans.destination = r_train_interior;
            instance_destroy();
            state = "absent";
            state_timer = 0;
        }
        break;
    case "present":
        if state_timer = 0 {
            instance_create(x+76,y-32,obj_create_player);
            __view_set( e__VW.Object, 0, obj_camera );
            // Turn off switches
            //obj_switch_call.active = false;
            //obj_switch_dismiss.active = false;
        }
        // Timer
        state_timer++;
        break;
    
}

