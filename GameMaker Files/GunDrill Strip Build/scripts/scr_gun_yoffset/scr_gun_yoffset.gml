/// @description scr_gun_xoffset()
/// @function scr_gun_xoffset

switch gun_dir {
    case 0:
        return 0;
        break;
    case 270:
        return 12;
        break;
    case 90:
        return -12;
        break;
}
