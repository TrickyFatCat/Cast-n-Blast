/// @param direction
/// @param velocity
/// @param friction

var _targetDirection = argument0;
var _velocityCurrent = argument1;
var _friction = argument2;

var _addX = _friction * sign(_velocityCurrent);
var _positionDelta = global.TimeFactor * _velocityCurrent + (0.5 * sqr(global.TimeFactor) * _addX);
_velocityCurrent = max(_velocityCurrent - _friction * global.TimeFactor, 0);
velocityX = lengthdir_x(_positionDelta, _targetDirection);
velocityY = lengthdir_y(_positionDelta, _targetDirection);

return _velocityCurrent;