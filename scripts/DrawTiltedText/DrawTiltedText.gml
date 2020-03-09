/// @param font
/// @param w_base
/// @param w_tilt
/// @param h_base
/// @param h_tilt
/// @param colour_base
/// @param colour_tilt
/// @param text

var font = argument0;
var w_base = argument1;
var w_tilt = argument2;
var h_base = argument3;
var h_tilt = argument4;
var colour_base = argument5;
var colour_tilt = argument6;
var text = argument7;
var scaleX = argument8;
var scaleY = argument9;


draw_set_font(font);
draw_set_color(colour_tilt);
draw_text_transformed(w_base + w_tilt, h_base + h_tilt, text, scaleX, scaleY, 0);
draw_set_color(colour_base);
draw_text_transformed(w_base, h_base, text, scaleX, scaleY, 0);