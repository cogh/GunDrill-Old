/// @description scr_gun_sprite()
/// @function scr_gun_sprite

var spr;

if gun_dir = 90 {
    spr = spr_gun_up;
}
else if gun_dir = 270 {
    spr = spr_gun_down;
}
else {
    spr = spr_gun_fwd;
}

gun_sprite = spr;
gun_sprite_index = 0;

if gun_state = st_gun_drill {
    gun_sprite_index = 1;
}
if gun_state = st_gun_burst {
    gun_sprite_index = 2;
}
