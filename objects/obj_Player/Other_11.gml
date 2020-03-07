/// @description MovementController

var _isConstant;

if (currentState != PlayerState.Dash)
{
	_isConstant = false;
}
else
{
	_isConstant = true;
}

MoveObject(_isConstant);

switch currentState
{
	case PlayerState.Idle:
		velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
	break;
	
	case PlayerState.Run:
		directionCurrent = point_direction(0, 0, directionX, directionY);
		velocity = CalculateAcceleratedVelocity(directionCurrent, velocity, maxVelocity, acceleration);
	break;
	
	case PlayerState.Dash:
		if (previousState == PlayerState.Run)
		{
			directionCurrent = point_direction(0, 0, directionX, directionY);
		}
		
		velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
		for (var i = 0; i < 1; i++)
		{
			var _direction = point_direction(0, 0, directionX, directionY) - 180 + random_range(-30, 30);
			SpawnDust(x, y - 1, true, _direction);
		}
		
		if (velocity <= maxVelocity)
		{
			currentState = PlayerState.Idle;
			isInvulnerable = false;
			collisionEnable = true;
		}
	break;
}