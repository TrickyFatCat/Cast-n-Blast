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

dustSpawnTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(dustSpawnTimer, dustSpawnPause);
			
if (_timeIsOver)
{
	for (var i = 0; i < 1; i++)
	{
		var _direction = directionCurrent - 180;
		var _x = x + lengthdir_x(8, _direction);
		var _y = y + lengthdir_y(8, _direction);
		var _dust = SpawnDust(vfx_AirDust, _x, _y, drawColour, true, _direction);
		_dust.velocityZ = 0;
	}
}
//SpawnTrailEffect(vfx_SkullTrail, 0.1, 1, true, true, true, true);