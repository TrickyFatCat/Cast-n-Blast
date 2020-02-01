/// @param numberOfItems

var _number = argument0;

var _array = [];

for (var i = 0; i < _number; i++)
{
	_array[i] = ds_map_create();
}

return _array;