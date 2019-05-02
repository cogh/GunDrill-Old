/// @description scr_jetpack_boost()
/// @function scr_jetpack_boost

// Reset vsp
vsp = 0;

// Get boost angle
var boost_angle = 0;
switch(jetpack_dir) {
    case -1:
        boost_angle = 110;
        boost_strength = jetpack_vel*0.8;
        break;
    case 0:
        boost_angle = 90;
        boost_strength = jetpack_vel;
        break;
    case 1:
        boost_angle = 70;
        boost_strength = jetpack_vel*0.8;
        break;
}

// Apply boost
hsp += lengthdir_x(boost_strength,boost_angle);
vsp += lengthdir_y(boost_strength,boost_angle);
audio_play_sound(sb_jetpack,0,0);
