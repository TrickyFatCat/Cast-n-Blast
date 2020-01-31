/// @description MovementController

MoveObject(false);

switch currentState
{
	case PlayerState.Idle:
		velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
	break;
	
	case PlayerState.Run:
		directionCurrent = point_direction(0, 0, directionX, directionY);
		velocity = CalculateAcceleratedVelocity(directionCurrent, velocity, maxVelocity, acceleration);
	break;
}