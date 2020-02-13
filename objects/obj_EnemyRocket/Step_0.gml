switch (currentState)
{
	case RocketState.Start:
		freeFlightTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(freeFlightTimer, freeFlightTime);
		
		if (_timeIsOver)
		{
			groundFriction = 0;
			acceleration = 0.01;
			currentState = RocketState.Search;
		}
	break;
	
	case RocketState.Search:
		var _distanceToPlayer = CalculateDistanceToPlayer();
		
		if (_distanceToPlayer >= minDistance)
		{
			var _deltaDirection = CalculateDeltaDirection(global.Player, directionCurrent, rotationSpeed);
			directionCurrent -= _deltaDirection
		}
		else
		{
			currentState = RocketState.Attack;
		}
	break;
	
	case RocketState.Attack:
			directionCurrent = CalculateDirectionToPlayer();
			var _distanceToPlayer = CalculateDistanceToPlayer();
			targetX = x + lengthdir_x(_distanceToPlayer, directionCurrent);
			targetY = y + lengthdir_y(_distanceToPlayer, directionCurrent);
			maxVelocity *= 2;
			acceleration = 1;
			explosion.x = targetX;
			explosion.y = targetY;
			explosion.isDisplayingRadius = true;
			explosion.damage = damage;
			drawColour = c_red;
			currentState = RocketState.Explode;
	break;
	
	case RocketState.Explode:
		var _distanceToTarget = point_distance(x, y, targetX, targetY);
		
		if (_distanceToTarget <= 5)
		{
			instance_destroy();
		}
	break;
}