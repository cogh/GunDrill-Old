/// @description scr_send_damage(target,damage,dir)
/// @function scr_send_damage
/// @param target
/// @param damage
/// @param dir

// Arguments
var target = argument0;
var dmg = argument1;
var dir = argument2;

// Create packet
var packet = ds_map_create();
ds_map_add(packet,"damage",dmg);
ds_map_add(packet,"direction",dir);

// Dealt damage trigger
trig_dealt_dmg = true;

// Send packet
ds_list_add(target.damage_packets,packet);
