/// @description MovementSequence

var _isConstant = (acceleration <= 0 || groundFriction <= 0)

MoveObject(_isConstant);

#region // Calculate velocity
if (acceleration > 0)
{
	velocityCurrent = CalculateAcceleratedVelocity(directionCurrent, velocityCurrent, pullVelocityMax, acceleration);
}
else if (groundFriction > 0)
{
	velocityCurrent = CalculateDeceleratedVelocity(directionCurrent, velocityCurrent, groundFriction);
	if (velocityCurrent == 0)
	{
		instance_destroy(id);
	}
}
else
{
	CalculateConstantVelocity(velocityCurrent, directionCurrent);
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
			velocityCurrent = max(velocityCurrent - bounceFriction * global.TimeFactor, 0);
		}
		isBounced = !isBounced;
	}
}