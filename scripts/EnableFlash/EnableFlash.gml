/// @description Enables flash shader

/// @param flashColour
/// @param flashPower

var _colour = argument0;
var _power = argument1;

if flashPower == 0 {
	flashColour = _colour;
	flashPower = _power;
}