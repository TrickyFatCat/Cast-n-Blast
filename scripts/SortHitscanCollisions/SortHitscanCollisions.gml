/// @param direction
/// @param targetObjectsArray

var _direction = argument0;
var _targetsArray = argument1;

var _collisionPoints;
var _nearestPoint;

for (var i = 0; i < array_length_1d(_targetsArray); i++)
{
	_collisionPoints[i] = CheckHitscanCollision(_direction, _targetsArray[i], true);
}

for (i = 0; i < array_length_1d(_collisionPoints); i++)
{
	if (i = 0)
	{
		_nearestPoint = _collisionPoints[i];
	}
	
	if (_collisionPoints[i] < _nearestPoint) && (_collisionPoints[i] != 0)
	{
		_nearestPoint = _collisionPoints[i];
	}
}

return _nearestPoint