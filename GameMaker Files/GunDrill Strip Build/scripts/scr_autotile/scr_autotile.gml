/// @description scr_autotile()
/// @function scr_autotile

// Find adjacent tiles
var _r = !place_meeting(x+1,y,obj_solid);
var _u = !place_meeting(x,y-1,obj_solid);
var _l = !place_meeting(x-1,y,obj_solid);
var _d = !place_meeting(x,y+1,obj_solid);
var adj = 0;
if _r { adj++; }
if _u { adj++; }
if _l { adj++; }
if _d { adj++; }

// Define type 
switch adj {
    case 0:
        sprite_index = spr_solid_inside;
        break;
    case 1:
        //Wall
        if _r { sprite_index = spr_solid_r; }
        if _u { sprite_index = spr_solid_u; }
        if _l { sprite_index = spr_solid_l; }
        if _d { sprite_index = spr_solid_d; }
        break;
    case 2:
        //Corner
        if _r && _u { sprite_index = spr_solid_cnr_ru; }
        if _u && _l { sprite_index = spr_solid_cnr_ul; }
        if _l && _d { sprite_index = spr_solid_cnr_ld; }
        if _d && _r { sprite_index = spr_solid_cnr_dr; }
        //Bridge
        if _r && _l { sprite_index = spr_solid_brg_rl; }
        if _u && _d { sprite_index = spr_solid_brg_ud; }
        break;
    case 3:
        //Ridge
        if !_r { sprite_index = spr_solid_ridge_l; }
        if !_u { sprite_index = spr_solid_ridge_d; }
        if !_l { sprite_index = spr_solid_ridge_r; }
        if !_d { sprite_index = spr_solid_ridge_u; }
        break;
    case 4:
        sprite_index = spr_solid_dnt;
        break;
}
