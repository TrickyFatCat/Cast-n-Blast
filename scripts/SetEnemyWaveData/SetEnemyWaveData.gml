/// @param wave
/// @param index
/// @param object
/// @param number
/// @param weight

var _wave = argument0;
var _index = argument1;
var _object = argument2;
var _number = argument3;
var _weight = argument4;

if (_number == 0 || _weight == 0)
{
	_number = 0;
	_weight = 0;
}

SetObjectData(_wave[_index], _object, _number, _weight);