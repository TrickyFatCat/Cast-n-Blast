/// @param target
/// @param currentDirection
/// @param rotationSpeed

var _target = argument0;
var _direction = argument1;
var _rotationSpeed = argument2;

var _directionToTarget = point_direction(x, y, _target.x, _target.y);
var _directionDifference = angle_difference(_direction, _directionToTarget);

if (_directionDifference == 0)
{ 
	var _rotationOffset = _rotationSpeed;
}
else
{
	var _rotationOffset = min(_rotationSpeed, abs(_directionDifference));
}

return sign(_directionDifference) * _rotationOffset * global.TimeFactor;