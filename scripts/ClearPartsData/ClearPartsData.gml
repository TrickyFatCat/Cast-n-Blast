/// @param dataArray

var _lastIndex = array_length_1d(global.PartsData) - 1;

for (var i = 0; i < _lastIndex; i++)
{
	ds_map_destroy(global.PartsData[i]);
}