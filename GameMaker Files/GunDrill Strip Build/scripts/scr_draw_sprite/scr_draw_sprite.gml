/// @description scr_draw_sprite()
/// @function scr_draw_sprite

// Displacement
sprite_x_shift = 0;
sprite_y_shift = 0;
if img_index >= 1
&& grounded { sprite_y_shift = -2; }

// Round sprite
var sprite_x = x;
var sprite_y = y;
if abs(hsp) < 1 && grounded { sprite_x = round(sprite_x*2)/2; }
if sidled_left or sidled_right { sprite_x = round(sprite_x); }
if place_meeting(x,y+1,par_solid)
or place_meeting(x,y+1,par_platform) { sprite_y = round(sprite_y); }

// Progress image index
scr_draw_index();

// Invul blink
if invul > 0 {
    if sprite_alpha = 1 { sprite_alpha = 0; }
    else { sprite_alpha = 1; }
}
else {
    sprite_alpha = 1;
}

// Jetpack
if jetpack_visible { draw_sprite_ext(jetpack_sprite,0,sprite_x,sprite_y+sprite_y_shift,facing,1,0,c_white,sprite_alpha); }

// Gun
if gun_visible { draw_sprite_ext(gun_sprite,gun_sprite_index,sprite_x,sprite_y+sprite_y_shift,facing,1,0,c_white,sprite_alpha); }

// Self
if draw_body { draw_sprite_ext(sprite_index,img_index,sprite_x,sprite_y,facing,1,0,c_white,sprite_alpha); }


// Draw new GunDrill
//var _x = x + scr_gun_xoffset();
//var _y = y + scr_gun_yoffset();
//draw_sprite_ext(spr_gundrill,0,_x,_y,facing,1,gun_dir,c_white,1);