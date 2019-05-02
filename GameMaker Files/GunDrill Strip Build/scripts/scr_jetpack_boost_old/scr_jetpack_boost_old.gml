/// @description scr_jetpack_boost()
/// @function scr_jetpack_boost

// Reset vsp
vsp = 0;

// Get boost angle
var boost_angle = 0;
switch(jetpack_dir) {
    case -1:
        boost_angle = 110;
        break;
    case 0:
        boost_angle = 90;
        break;
    case 1:
        boost_angle = 70;
        break;
}

// Apply boost
hsp += lengthdir_x(jetpack_vel,boost_angle);
vsp += lengthdir_y(jetpack_vel,boost_angle);
audio_play_sound(sb_jetpack,0,0);
