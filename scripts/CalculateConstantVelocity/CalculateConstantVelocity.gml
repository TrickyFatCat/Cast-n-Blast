/// @description Calculates constant velocity if acceleration == 0 && groundFriction == 0

/// @param Velocity
/// @param direction

var _velocity = argument0;
var _direction = argument1;

velocityX = lengthdir_x(_velocity, _direction);
velocityY = lengthdir_y(_velocity, _direction);