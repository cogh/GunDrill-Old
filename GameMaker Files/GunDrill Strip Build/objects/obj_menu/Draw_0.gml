/// @description Insert description here
// You can write your code in this editor

// Set font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_diest);

// Draw buttons
for (var _i = 0; _i < ds_list_size(button_list); _i++) {
	var _button = button_list[| _i];
	draw_set_color(c_black);
	draw_text_outline(_button[?"x"],_button[?"y"],_button[?"text"]);
	draw_set_color(_button[?"colour"]);
	draw_text(_button[?"x"],_button[?"y"],_button[?"text"]);
}