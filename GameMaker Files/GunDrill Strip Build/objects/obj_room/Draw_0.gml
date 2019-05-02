/// @description  Draw

var xx = __view_get( e__VW.XView, 0 );
var yy = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 );

// Show room name
if show_room_name > 0 {
    // Get string
    var str = string(room_get_name(room));
    str = string_replace_all(str, "r_","");
    str = string_replace_all(str, "_"," ");
    // Draw
    draw_set_colour(c_white);
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_set_alpha(1);
	draw_set_font(f_small);
    draw_text(xx,yy,string_hash_to_newline(str));
}

