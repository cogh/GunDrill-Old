/// @description scr_facing()
/// @function scr_facing

if abs(inp_xdir) > 0 && (gun_state = st_gun_idle or gun_state = st_gun_inactive) {
    facing = sign(inp_xdir);
}
