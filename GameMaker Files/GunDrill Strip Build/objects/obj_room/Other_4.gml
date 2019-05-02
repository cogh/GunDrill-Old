/// @description  Room Start

if instance_exists(obj_player) {
    instance_create(obj_player.x,obj_player.y,obj_transition_open);
}

show_room_name = 1;

