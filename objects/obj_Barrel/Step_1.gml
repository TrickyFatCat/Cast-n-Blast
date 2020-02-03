var _spawnTime = 0.3;

switch (currentState)
{
	case EnemyState.Spawn:
		isInvulnerable = true;
		collisionEnable = false;
		var _spawnStep = CalculateStep(_spawnTime);
		
		if (spawnProgress != 1)
		{
			spawnProgress = ApproachTimeFactor(spawnProgress, 1, _spawnStep);
			
			drawAlpha = LerpTimeFactor(0, 1, spawnProgress);
		}
		else
		{
			currentState = EnemyState.Action;
			isInvulnerable = false;
			collisionEnable = true;
		}
	break;
	
	case EnemyState.Action:
		if (hitPoints <= 0 && (!timerIsTicking))
		{
			timerIsTicking = true;
		}

		if (timerIsTicking)
		{
			explosionDelayTimer += global.TimeFactor;
	
			MoveObject(true);
	
			velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);
	
			var _timeIsOver = CheckTimer(explosionDelayTimer, explosionDelayTime);
			
			CheckBouncingCollision(obj_Wall);

			if (isBounced)
			{
				directionCurrent = point_direction(0, 0, velocityX, velocityY);
				isBounced = !isBounced;
			}
	
			if (_timeIsOver)
			{
				instance_destroy();
			}
		}
	break;
}