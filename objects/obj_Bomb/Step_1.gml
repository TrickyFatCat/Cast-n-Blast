//State machine
switch currentState
{
	case BombState.Drop:
		drawAngle = 0;
		var _coveredDistance = point_distance(x, y, initialX, initialY);
		
		if (dropProgress < 1)
		{
			event_inherited();
			z = LerpTimeFactor(0, 64, sin(pi * dropProgress));
			dropProgress = _coveredDistance / dropDistance;
		}
		else
		{
			currentState = BombState.Activation;
		}
	break;
	
	case BombState.Activation:
		ExecuteActivation;
	break;
	
	case BombState.Idle:
		ExecuteIdle;
	break;
	
	case BombState.Destruction:
		ExecuteDestruction;
	break;
}