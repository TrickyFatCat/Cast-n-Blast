// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case PickupState.Drop:
		MoveObject(false);

		velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
		
		if (velocity <= 0)
		{
			currentState = PickupState.Idle;
		}

		CheckBouncingCollision(obj_Wall);

		if (isBounced)
		{
			directionCurrent = point_direction(0, 0, velocityX, velocityY);
			isBounced = !isBounced;
		}
	break;
	
	case PickupState.Idle:
		lifespanTimer += global.TimeFactor;
		
		var _timeIsOver = CheckTimer(lifespanTimer, lifespanTime);
		
		if (_timeIsOver)
		{
			currentState = PickupState.Destroy;
		}
	break;
	
	case PickupState.Destroy:
		var _destroyStep = CalculateStep(1);
		
		drawAlpha = ApproachTimeFactor(drawAlpha, 0, _destroyStep);
		
		if (drawAlpha == 0)
		{
			instance_destroy();
		}
	break;
}