// @param x
// @param y
// @param isMoving
// @param direction

var _x = argument0;
var _y = argument1;
var _isMoving = argument2;

var _dustEffect = instance_create_layer(_x, _y, layer, vfx_Dust);
_dustEffect.isMoving = _isMoving;

if (_isMoving)
{
	_dustEffect.direction = argument3;
}

return _dustEffect;