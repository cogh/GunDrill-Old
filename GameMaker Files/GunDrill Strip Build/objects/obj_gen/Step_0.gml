/// @description  Generate while moving

timer++;

if timer = 60 && room = r_travel_sim {
    if irandom(4) = 0 {
        var event = choose(obj_event_refuge,obj_event_refuge,obj_event_obstruction,obj_event_obstruction2,obj_event_ambush,obj_event_engine,obj_event_lake);
        instance_create(obj_rover.x+64,obj_rover.y,event);
    }
    timer = 0;
}

