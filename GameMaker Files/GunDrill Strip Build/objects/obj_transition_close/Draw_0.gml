/// @description  Draw lines

draw_set_colour(c_black);

var x1 = __view_get( e__VW.XView, 0 );
var y1 = __view_get( e__VW.YView, 0 );
var x2 = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 );
var y2 = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 );

draw_line_width(x1,y1,x2,y1,thickness);
draw_line_width(x2,y1,x2,y2,thickness);
draw_line_width(x2,y2,x1,y2,thickness);
draw_line_width(x1,y2,x1,y1,thickness);

