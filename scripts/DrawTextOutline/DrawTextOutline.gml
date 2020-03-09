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
var _scaleX = argument5;
var _scaleY = argument6;
  
//Outline  
draw_set_color(_colourOutline);  
draw_text_transformed(_x + 1, _y + 1, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x - 1, _y - 1, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x, _y + 1, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x + 1, _y, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x, _y - 1, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x - 1, _y, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x - 1, _y + 1, _text, _scaleX, _scaleY, 0);  
draw_text_transformed(_x + 1, _y - 1, _text, _scaleX, _scaleY, 0);  
  
//Text  
draw_set_color(_colourString);
draw_text_transformed(_x, _y, _text, _scaleX, _scaleY, 0);