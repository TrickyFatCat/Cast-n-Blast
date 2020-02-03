/// @param x
/// @param y
/// @param splatterObject
/// @param count
/// @param maxVelocity

var _x = argument0;
var _y = argument1;
var _object = argument2;
var _count = argument3;
var _velocity = argument4;

for (var i = 0; i < _count; i++)
{
	var _splatter = instance_create_layer(_x, _y, layer, _object);
	
	with (_splatter)
	{
		maxVelocity = _velocity;
		velocity = random_range(0.4, _velocity);
	}
}