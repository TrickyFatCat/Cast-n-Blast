/// @description ProcessMovement

MoveObject(false);

velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
CheckBouncingCollision(obj_Wall);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}