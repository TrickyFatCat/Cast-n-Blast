//State machine
switch currentState
{
	case BombState.Drop:
		if (targetX == noone && targetY == noone)
		{
			targetX = initialPosition[0] + lengthdir_x(dropDistance, directionCurrent);
			targetY = initialPosition[1] + lengthdir_y(dropDistance, directionCurrent);
			drawAngle = 0;
		}
		
		var _distanceToTarget = point_distance(x, y, targetX, targetY);
		
		if (_distanceToTarget > 3)
		{
			event_inherited();
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