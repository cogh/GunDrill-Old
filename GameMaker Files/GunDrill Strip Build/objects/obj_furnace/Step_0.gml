/// @description  Step

// Light furnace
if place_meeting(x,y,obj_player) && gamepad_button_check_pressed(0,gp_face2) && lit = false {
    lit = true
    money_change(-20);
    audio_play_sound(sb_furnace_activation,0,0);
}

