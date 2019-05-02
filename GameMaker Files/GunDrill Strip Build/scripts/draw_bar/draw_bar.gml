/// @description draw_bar(x1,y1,x2,y2,value,max,colour,segment)
/// @function draw_bar
/// @param x1
/// @param y1
/// @param x2
/// @param y2
/// @param value
/// @param max
/// @param colour
/// @param segment

// Coords
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

// Width
var w = x2 - x1;

// Max
var maximum = argument5;

// Value
var fill = argument4/argument5;

// Design
var colour = argument6;

// Segment
var segment = argument7;

// Create back piece
draw_set_colour(c_black);
draw_rectangle(x1,y1,x2,y2,false);

// Create fill
draw_set_colour(colour);
draw_rectangle(x1,y1,x1+(w*fill),y2,false);

// Create segmentation
if segment = true {
    draw_set_colour(c_black);
    for (i=1; i<obj_data.char_hp_max; i++) {
        draw_line_width(x1+((w/maximum)*i),y1,x1+((w/maximum)*i),y2,2);
    }
}

// Create outline
draw_set_colour(c_white);
draw_rect(x1,y1,x2,y2);
