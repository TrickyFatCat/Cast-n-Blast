drawAngle += rotationSpeed * rotationDirection;
var _direction = directionCurrent - 180;
var _x = x + lengthdir_x(12, _direction);
var _y = y + lengthdir_y(12, _direction);
var _dust = SpawnDust(vfx_Dust, _x, _y, c_orange, true, _direction);
_dust.velocityZ = 0;