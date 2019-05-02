/// @description scr_phys_walljump_apply()
/// @function scr_phys_walljump_apply

if inp_jump && !grounded {
    if sidled_left {
        // Jump right
        hsp += jump_vel*1;
        vsp = -jump_vel;
        audio_play_sound(sb_walljump,0,0);
    }
    if sidled_right {
        // Jump left
        hsp -= jump_vel*1;
        vsp = -jump_vel;
        audio_play_sound(sb_walljump,0,0);
    }
}

/* Old

if inp_jump && !grounded {
    if sidled_left {
        // Jump right
        hsp += jump_vel*0.5;
        vsp = -jump_vel;
        audio_play_sound(sb_walljump,0,0);
    }
    if sidled_right {
        // Jump left
        hsp -= jump_vel*0.5;
        vsp = -jump_vel;
        audio_play_sound(sb_walljump,0,0);
    }
}

*/
