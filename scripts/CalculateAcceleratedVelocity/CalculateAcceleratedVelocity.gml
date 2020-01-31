/// @param direction
/// @param velocity
/// @param velocityMax
/// @param acceleration

var _targetDirection = argument0;
var _velocityCurrent = argument1;
var _velocityMax = argument2;
var _acceleration = argument3;

//Delta X and Y calculations
var _positionDelta = global.TimeFactor * _velocityCurrent + (0.5 * sqr(global.TimeFactor) * _acceleration);
_velocityCurrent = min(_velocityCurrent + _acceleration * global.TimeFactor, _velocityMax);
velocityX = lengthdir_x(_positionDelta, _targetDirection);
velocityY = lengthdir_y(_positionDelta, _targetDirection);

return _velocityCurrent;