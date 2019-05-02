/// @description scr_draw_roverstuff()
/// @function scr_draw_roverstuff

draw_set_alpha(1);

// Coords
var x1 = floor(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.1));
var y1 = floor(__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )*0.25));
var x2 = floor(__view_get( e__VW.XView, 0 )+(__view_get( e__VW.WView, 0 )*0.9))-2;
var y2 = floor(__view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )*0.75))-2;
var xx = lerp(x1,x2,0.5);
var yy = lerp(y1,y2,0.5);

// Back
draw_set_colour(c_black);
draw_rectangle(x1,y1,x2,y2,false)

// Outline
draw_set_colour(c_white);
draw_line_width(x1, y1, x2, y1, 1);
draw_line_width(x2, y1, x2, y2, 1);
draw_line_width(x2, y2, x1, y2, 1);
draw_line_width(x1, y2, x1, y1, 1);

// Text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_small);
draw_text(xx,yy,string_hash_to_newline(message));
