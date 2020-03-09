/// @param objectsArray

var _objectsArray = argument0;

var _number = array_length_1d(_objectsArray);

for (var i = 0; i < _number; i++)
{
	_objectsArray[i].x = x;
	_objectsArray[i].y = y;
	instance_activate_object(_objectsArray[i]);
}