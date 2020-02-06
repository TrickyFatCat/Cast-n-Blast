/// @description ProcessDrop

MoveObject(false);

velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
		
if (velocity <= 0)
{
	currentState = MineState.Activation;
}

CheckBouncingCollision(obj_Wall);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}