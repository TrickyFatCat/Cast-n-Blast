MovePickup;
var _gravity = 0.4;

//State machine
switch currentState
{
	case PickupState.Drop:
		if (z + velocityZ >= 0)
		{
			z += velocityZ;
			velocityZ -= _gravity * global.TimeFactor;
			SetJumpShadowAlpha();
		}
		else
		{
			z = 0;
			velocityZ = 0;
			currentState = PickupState.Idle;
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