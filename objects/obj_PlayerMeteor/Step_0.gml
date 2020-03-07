drawAngle += rotationSpeed * rotationDirection;
var _direction = directionCurrent - 180;
var _x = x + lengthdir_x(16, _direction);
var _y = y + lengthdir_y(16, _direction);

SpawnDust(_x, _y, true, _direction);