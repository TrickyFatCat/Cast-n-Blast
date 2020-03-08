// @param dustObject
// @param x
// @param y
// @param isMoving
// @param direction

var _object = argument0;
var _x = argument1;
var _y = argument2;
var _isMoving = argument3;

var _dustEffect = instance_create_layer(_x, _y, layer, _object);
_dustEffect.isMoving = _isMoving;

if (_isMoving)
{
	_dustEffect.direction = argument4;
}

return _dustEffect;