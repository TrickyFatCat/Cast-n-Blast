/// @param dataArray

var _data = argument0;

var _lastIndex = array_length_1d(_data) - 1;

for (var i = 0; i < _lastIndex; i++)
{
	ds_map_destroy(_data[i]);
}