/// @description scr_process_damage()
/// @function scr_process_damage

// Process damage packets
if ds_list_size(damage_packets) > 0 {
    for (i=ds_list_size(damage_packets)-1; i>=0; i--) {
        // Identify packet
        damage_packet = damage_packets[|i];
        // Decrease health
        var dmg = damage_packet[?"damage"];
        hp = clamp(hp-dmg,0,hp_max);
        // Record damage count
        damage_count += dmg;
        // Destroy data
        ds_map_destroy(damage_packet);
        ds_list_delete(damage_packets,i);
        // Set shake
        shake_timer = 5;
        blend_timer = 5;
        blend_colour = c_red;
        // Set flash
		flash_timer = 2;
        // Play sound
        audio_play_sound(sb_enemy_hit,0,0);
		// Trig
		trig_took_dmg = true;
    }
    // Set damage count timer
    damage_count_timer = 1;
}
