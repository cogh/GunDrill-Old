/// @description st_plr_dead()
/// @function st_plr_dead

// Initialise
if state_timer = 0 {
    sprite_index = no_sprite;
    audio_play_sound(sb_death,0,0);
    instance_create(x,bbox_bottom,obj_explosion_2);
    // Sprite
    draw_body = false;
    draw_jetpack = false;
    draw_gun = false;
}
state_timer++;

if state_timer = 120 { 
    audio_pause_all();
    room_restart(); }
