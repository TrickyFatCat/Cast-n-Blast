/// @description ProcessTileActiveState

if (actionIsDelayed)
{
	actionDelayTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(actionDelayTimer, actionDelayTime)

	if (!_timeIsOver)
	{
		isActive = false;
	}
	else
	{
		isActive = true;
		EnableFlash(c_yellow, 0.2);
		actionDelayTimer = 0;
	}
}
else
{
	isActive = true;
}

if (isTemporary)
{
	activeStateTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(activeStateTimer, activeStateTime);
	drawColour = merge_color(c_red, c_gray, activeStateTimer / activeStateTime);
		
	if (_timeIsOver)
	{
		activeStateTimer = 0;
		currentState = ActiveTileState.Deactivation;
	}
}