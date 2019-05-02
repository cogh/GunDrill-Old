/// @description scr_jetpack_sprite()
/// @function scr_jetpack_sprite

var spr;

if jetpack_dir = 0 {
    spr = spr_jetpack_up;
}
else {
    if jetpack_dir = facing {
        spr = spr_jetpack_fwd;
    }
    else {
        spr = spr_jetpack_back;
    }
}

return spr;
