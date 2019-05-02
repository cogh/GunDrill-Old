/// @description draw_damage_count()
/// @function draw_damage_count

draw_set_colour(c_red);
if damage_count_timer > 0 {
	var _x = x;
	var _y = bbox_top-8;
	draw_set_font(f_small);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
    draw_text(_x,_y,string_hash_to_newline(string(damage_count)));
}
else {
    damage_count = 0;
}
damage_count_timer -= 1 / room_speed;
