/// @description ChangeDirection

direction = point_direction(0, 0, velocityX, velocityY);
var _direction = bouncedDirectionDelta/2;
var _directionNoise = irandom_range(-_direction, _direction);
var _bouncedDirection = direction + _directionNoise;
direction = _bouncedDirection;
directionCurrent = direction;
drawAngle = directionCurrent;