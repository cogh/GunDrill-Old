/// @description  Step

// Move
if !place_meeting(x+(dir*2),y,par_solid) {
    x += dir*2;
}
else {
    dir = -dir;
}


// Process damage packets
if ds_list_size(damage_packets) > 0 {
    for (i=ds_list_size(damage_packets)-1; i>=0; i--) {
        // Identify packet
        damage_packet = damage_packets[|i];
        // Decrease health
        var dmg = damage_packet[?"damage"];
        hp = clamp(hp-dmg,0,hp_max);
        // Destroy data
        ds_map_destroy(damage_packet);
        ds_list_delete(damage_packets,i);
        // Set shake
        shake_timer = 5;
        // Play sound
        audio_play_sound(sb_enemy_hit,0,0);
    }
}

// Damage player
if place_meeting(x,y,obj_player) {
    health_change(-1);
}

// Die
if hp <= 0 {
    instance_create(x,y,obj_explosion);
    instance_destroy();
}

