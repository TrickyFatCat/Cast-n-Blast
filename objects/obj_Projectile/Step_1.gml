/// @description MovementSequence

var _isConstant = (acceleration <= 0 || groundFriction <= 0)

MoveObject(_isConstant);

#region // Calculate velocity
if (acceleration > 0)
{
	velocity = CalculateAcceleratedVelocity(directionCurrent, velocity, maxVelocity, acceleration);
}
else if (groundFriction > 0)
{
	velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
	if (velocity == 0)
	{
		instance_destroy(id);
	}
}
else
{
	CalculateConstantVelocity(velocity, directionCurrent);
}
#endregion

if (isBounceable)
{
	CheckBouncingCollision(obj_Obstacle);
	
	if (isBounced)
	{
		ChangeDirection;
		if (acceleration == 0) //Apply bounce friction
		{
			velocity = max(velocity - bounceFriction * global.TimeFactor, 0);
		}
		isBounced = !isBounced;
	}
}