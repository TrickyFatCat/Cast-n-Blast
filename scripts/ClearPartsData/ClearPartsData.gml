/// @param dataArray

var _lastIndex = array_length_1d(global.PartsData) - 1;

for (var i = 0; i < _lastIndex; i++)
{
	for (var k = 0; k < array_length_1d(global.PartsData[i]); k++)
	{
		var _data = global.PartsData[i];
		ds_map_destroy(_data[k]);
	}
}