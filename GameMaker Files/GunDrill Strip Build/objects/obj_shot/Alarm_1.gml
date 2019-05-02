/// @description  Set sprite and spread

// Weird dir fix thing
if dir = -90 { dir = 270; }

// Sprite dir
image_speed = 0;
switch dir {
    case 0:
        sprite_index = spr_shot_r;
        break;
    case 90:
        sprite_index = spr_shot_u;
        break;
    case 180:
        sprite_index = spr_shot_l;
        break;
    case 270:
        sprite_index = spr_shot_d;
        break;
    default:
        sprite_index = spr_shot_r;
        break;
}

// Spread
dir+=irandom_range(-spread,spread)

