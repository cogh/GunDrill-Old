/// @description scr_draw_index()
/// @function scr_draw_index

if abs(hsp) > 0.2 { img_index += 6 / room_speed; }
else { img_index = 0; }

if img_index > image_number {
    img_index -= image_number;
}
