/// @description  Initialise World

randomize();

instance_create(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,obj_event_start);
instance_create(2000,__view_get( e__VW.HView, 0 )/2,obj_event_end);
//instance_create(500,view_hview[0]/2,obj_event_refuge);

instance_create(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,obj_rover);


// timer
timer = 0;

