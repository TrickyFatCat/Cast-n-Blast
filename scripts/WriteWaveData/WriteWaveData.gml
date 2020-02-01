/// @param index
/// @param data
/// @param weight

var _index = argument0;
var _data = argument1;
var _weight = argument2;

var _wave = ds_map_create();

ds_map_add(_wave, "index", _index);
ds_map_add(_wave, "data", _data);
ds_map_add(_wave, "weight", _weight);

return _wave;