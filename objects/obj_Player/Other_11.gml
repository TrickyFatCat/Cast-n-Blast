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
		
		if (velocity <= maxVelocity)
		{
			currentState = PlayerState.Idle;
			isInvulnerable = false;
			collisionEnable = true;
		}
	break;
}