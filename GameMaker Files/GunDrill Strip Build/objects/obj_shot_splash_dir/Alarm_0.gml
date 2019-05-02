/// @description  Sprite

// Sprite
switch dir {
    case 0:
        sprite_index = spr_shot_hit_r;
        break;
    case 90:
        sprite_index = spr_shot_hit_u;
        break;
    case 180:
        sprite_index = spr_shot_hit_l;
        break;
    case 270:
        sprite_index = spr_shot_hit_d;
        break;
}
image_speed = 1;

