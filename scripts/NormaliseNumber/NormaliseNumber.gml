/// @description Checks if number of loot is valid, if it's not then normalizes it
/// @param target
/// @param number

var _target = argument0;
var _number = argument1;

if (is_array(_target) && _number != 1)
{
	return _number = 1;
}
else if (_target == noone && _number != 1)
{
	return _number = 1;
}
else if (_number < 1)
{
	return _number = 1;
}
else
{
	return _number;
}