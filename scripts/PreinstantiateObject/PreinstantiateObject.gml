/// @param object
/// @param number

var _object = argument0;
var _number = argument1;

var _objects = [];

for (var i = 0; i < _number; i++)
{
	_objects[i] = instance_create_layer(x, y, layer, _object);
	instance_deactivate_object(_objects[i]);
}

return _objects;