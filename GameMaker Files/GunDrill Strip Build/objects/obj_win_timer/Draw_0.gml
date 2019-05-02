/// @description  Draw

// Draw message
draw_set_colour(c_white);
draw_set_halign(fa_middle);
draw_set_valign(fa_center);
draw_text(__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.HView, 0 )/2,string_hash_to_newline("Your time: " + time));

