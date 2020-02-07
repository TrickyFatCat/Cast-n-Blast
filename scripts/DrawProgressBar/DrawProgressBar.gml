/// @param x
/// @param y
/// @param scaleX
/// @param scaleY
/// @param alpha
/// @param borderColour
/// @param fillColour 
/// @param value
/// @param maxValue
/// @param isDescending

var _x = argument0;
var _y = argument1;
var _scaleX = argument2;
var _scaleY = argument3;
var _alpha = argument4;
var _borderColour = argument5;
var _fillColour = argument6;
var _value = argument7;
var _maxValue = argument8;
var _isDescending = argument9;

var _valueFactor = _value / _maxValue;
var _fillScale;
if (_isDescending)
{
	_fillScale = _scaleX * (1 -_valueFactor);
}
else
{
	_fillScale = _scaleX * _valueFactor;
}

DrawSlicedSprite(spr_interfaceAlpha, 0, _x, _y, _scaleX, _scaleY, _borderColour, _alpha);
draw_sprite_ext(spr_interfaceFill, 0, _x, _y, _fillScale, _scaleY, 0, _fillColour, _alpha);
DrawSlicedSprite(spr_interfaceBorder, 0, _x, _y, _scaleX, _scaleY, _borderColour, _alpha);
