switch (currentState)
{
	case ActiveTileState.Inactive:
		activeStateTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(activeStateTimer, activeStateTime);
		
		if (_timeIsOver)
		{
			activeStateTimer = 0;
			currentState = ActiveTileState.Reveal;
		}
	break;
	
	case ActiveTileState.Reveal:
		ProcessTileReveal;
	break;
	
	case ActiveTileState.Activation:
		ProcessTileActivation;
	break;
	
	case ActiveTileState.Active:
		ProcessTileActiveState;
	break;
	
	case ActiveTileState.Deactivation:
		ProcessTileDeactivation;
	break;
}