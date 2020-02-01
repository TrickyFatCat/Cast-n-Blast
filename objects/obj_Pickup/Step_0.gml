/// @description Insert description here

// Inherit the parent event
event_inherited();

//State machine
switch currentState
{
	case PickupState.Drop:
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