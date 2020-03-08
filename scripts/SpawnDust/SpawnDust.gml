/// @param dustObject
/// @param x
/// @param y
/// @param colour
/// @param isMoving
/// @param direction

var _object = argument0;
var _x = argument1;
var _y = argument2;
var _colour = argument3;
var _isMoving = argument4;

var _dustEffect = instance_create_layer(_x, _y, layer, _object);
_dustEffect.isMoving = _isMoving;
_dustEffect.drawColour = _colour;

if (_isMoving)
{
	_dustEffect.direction = argument5;
}

return _dustEffect;