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
		currentState = TileState.Deactivation;
		
		if (tilesList != noone)
		{
			var _position = ds_list_find_index(tilesList, id);
			ds_list_delete(tilesList, _position);
			tilesList = noone;
		}
	}
}