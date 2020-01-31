/// @description HitScanCollisonWith

/// @param direction
/// @param targetObject
/// @param isPrecise

var _direction = argument0;
var _targetObject = argument1;
var _isPrecise = argument2;

var _cast = process_raycast(x, y, _direction, _targetObject, _isPrecise, false, 2000);

if (_cast[cast.instance] != noone)
{
	endPointX = _cast[cast.x];
	endPointY = _cast[cast.y];
	var _collisionPoint = point_distance(x, y, endPointX, endPointY);
	return max(_collisionPoint, 1) + 2 ;
}