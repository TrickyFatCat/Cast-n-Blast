switch (currentState)
{
	case SpawnPointState.Inactive:
	break;
	
	case SpawnPointState.Active:
	break;
	
	case SpawnPointState.Reveal:
		
		if (revealProgress != 1)
		{
			var _revealStep = CalculateStep(1);
			
			revealProgress = ApproachTimeFactor(revealProgress, 1, _revealStep);
			
			drawAlpha = LerpTimeFactor(0, 1, revealProgress);
		}
		else
		{
			currentState = SpawnPointState.Spawn;
			owner = instance_create_layer(x, y, "entities", owner);
		}
	break;
	
	case SpawnPointState.Spawn:
		var _state = owner.currentState;
		
		if (_state >= EntityState.Idle)
		{
			currentState = SpawnPointState.Occupied;
		}
	break;
	
	case SpawnPointState.Occupied:
		if (revealProgress != 0)
		{
			var _revealStep = CalculateStep(0.15);
			
			revealProgress = ApproachTimeFactor(revealProgress, 0, _revealStep);
			
			drawAlpha = LerpTimeFactor(0, 1, revealProgress);
		}
		
		occupiedTimer += global.TimeFactor;
		
		var _timerIsOver = CheckTimer(occupiedTimer, occupiedTime);
		
		if (_timerIsOver)
		{
			occupiedTimer = 0;
			currentState = SpawnPointState.Active;
		}

	break;
}