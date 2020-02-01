/// @param lootMapIndex
/// @param object
/// @param number
/// @param weight

var _index = argument0;
var _object = argument1;
var _number = argument2;
var _weight = argument3;

_number = NormaliseNumber(_object, _number);

ds_map_add(_index, "object", _object);
ds_map_add(_index, "number", _number);
ds_map_add(_index, "weight", _weight);