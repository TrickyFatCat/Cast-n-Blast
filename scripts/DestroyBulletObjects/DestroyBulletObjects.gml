/// @param bulletsList

var _bulletsList = argument0;

var _listSize = ds_list_size(_bulletsList);

// Sequence
for (var i = 0; i < _listSize; i++)
{
	var _bullet = ds_list_find_value(_bulletsList, i);
	instance_destroy(_bullet);
}