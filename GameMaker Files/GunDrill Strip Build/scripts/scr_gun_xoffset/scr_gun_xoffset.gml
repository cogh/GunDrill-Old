/// @description scr_gun_xoffset()
/// @function scr_gun_xoffset

switch gun_dir {
    case 0:
        return facing*(14);
        break;
    case 270:
        return facing*(2);
        break;
    case 90:
        return facing*(6);
        break;
}
