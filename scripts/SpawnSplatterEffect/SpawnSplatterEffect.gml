/// @param x
/// @param y
/// @param splatterSprite
/// @param smearSprite
/// @param count
/// @param maxVelocity

var _x = argument0;
var _y = argument1;
var _splatterSprite = argument2;
var _smearSprite = argument3;
var _count = argument4;
var _velocity = argument5;

for (var i = 0; i < _count; i++)
{
	var _splatter = instance_create_layer(_x, _y, layer, vfx_Splatter);
	
	with (_splatter)
	{
		sprite_index = _splatterSprite;
		smearSprite = _smearSprite;
		maxVelocity = _velocity;
		velocity = random_range(0.4, _velocity);
	}
}