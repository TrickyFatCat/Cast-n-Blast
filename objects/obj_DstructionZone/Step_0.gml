switch (currentState)
{
	case TileState.Inactive:
	break;
	
	case TileState.Activation:
		var _step = CalculateStep(stateSwitchTime);
		
		if (stateSwitchProgress != 1)
		{
			stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 1, _step);
			drawAlpha = stateSwitchProgress;
		}
		else
		{
			EnableFlash(c_white, 1);
			drawColour = c_red;
			currentState = TileState.Active;
		}
	break;
	
	case TileState.Active:
		actionDelayTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(actionDelayTimer, actionDelayTime)

		if (!_timeIsOver)
		{
			isActive = false;
		}
		else
		{
			isActive = true;
			actionDelayTimer = 0;
			EnableFlash(c_yellow, 0.25);
		}
		
		activeTimer += global.TimeFactor;
		_timeIsOver = CheckTimer(activeTimer, activeTime);
		
		if (!_timeIsOver)
		{
			var _lerpAlpha = min(activeTimer / activeTime, 1);
			drawScaleX = LerpTimeFactor(0, drawScaleY, _lerpAlpha);
			image_xscale = drawScaleX;
		}
		
		if (global.EnemiesNumber == 0)
		{
			currentState = TileState.Deactivation;
			activeTimer = 0;
			actionDelayTimer = actionDelayTime;
		}
	break;
	
	case TileState.Deactivation:
		var _step = CalculateStep(stateSwitchTime);
		
		if (stateSwitchProgress != 0)
		{
			stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 0, _step);
			drawAlpha = stateSwitchProgress;
		}
		else
		{
			drawColour = c_gray;
			drawScaleX = 0;
			image_xscale = 0;
			stateSwitchProgress = 0;
			currentState = TileState.Inactive;
			instance_deactivate_object(id);
		}
	break;
}