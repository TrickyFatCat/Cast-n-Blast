/// @param x
/// @param y
/// @param outlineColour
/// @param stringColour
/// @param string

//draw_text_outlined(x, y, outline color, string color, string)    
var _x = argument0;  
var _y = argument1;
var _colourOutline = argument2;
var _colourString = argument3;
var _text = argument4;
  
//Outline  
draw_set_color(_colourOutline);  
draw_text(_x + 1, _y + 1, _text);  
draw_text(_x - 1, _y - 1, _text);  
draw_text(_x, _y + 1, _text);  
draw_text(_x + 1, _y, _text);  
draw_text(_x, _y - 1, _text);  
draw_text(_x - 1, _y, _text);  
draw_text(_x - 1, _y + 1, _text);  
draw_text(_x + 1, _y - 1, _text);  
  
//Text  
draw_set_color(_colourString);  
draw_text(_x, _y, _text); 