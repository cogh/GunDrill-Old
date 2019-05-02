/// @description  Draw GUI

/*

So, I just found out about draw_line_width. That should come in useful.

This object will be used to draw the GUI. Right now I'm focused on getting
the passenger/rover info done, but messages are also important.

I'm really rusty, but I guess it'd be something like
- Get canvas data
- Define canvas coordinates
- Draw canvas coordinates/frames
- Draw relevant data to canvas

So first of all I have to work out how much of the screen it should take up.
I think 25% should be okay

*/

/*

// Coords
var x1 = (__view_get( e__VW.XView, 0 ));
var y1 = (__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )*0.00));
var x2 = (__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))-2;
var y2 = y1+(__view_get( e__VW.HView, 0 )*0.10);
var xx = lerp(x1,x2,0.5);
var yy = lerp(y1,y2,0.5);

// Back
draw_set_colour(c_black);
draw_rectangle(x1,y1,x2,y2,false)

// Outline
draw_set_colour(c_white);
//draw_line_width(x1, y1, x2, y1, 1);
//draw_line_width(x2, y1, x2, y2, 1);
draw_line_width(x2, y2, x1, y2, 1);
//draw_line_width(x1, y2, x1, y1, 1);

// Draw portraits
draw_sprite(spr_portrait_char,0,xx-96,yy);

// Healthbar border
var chp_x1 = xx-64;
var chp_x2 = xx+64;
var chp_y1 = yy-2;
var chp_y2 = yy+2;
var chp_w = 128;

// Draw bar
draw_bar(chp_x1,chp_y1,chp_x1+chp_w,chp_y2,obj_data.char_hp,obj_data.char_hp_max,c_blue,true);


// Draw money
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x2-32,y2-8,string_hash_to_newline("Ore: " + string(obj_data.ore)));




// Draw boss health
if instance_exists(obj_boss) {
    if obj_boss.state != st_boss_inactive {
        draw_bar(chp_x1,chp_y1+32,chp_x1+chp_w,chp_y2+32,obj_boss.hp,obj_boss.hp_max,c_red,false);
    }
}

*/