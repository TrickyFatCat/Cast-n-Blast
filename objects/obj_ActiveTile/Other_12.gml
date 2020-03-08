/// @description ProcessTileActiveState

//if (tileType == TileType.DamageDealer)
//{
//	actionDelayTimer += global.TimeFactor;
//	var _timeIsOver = CheckTimer(actionDelayTimer, actionDelayTime)

//	if (!_timeIsOver)
//	{
//		isActive = false;
//	}
//	else
//	{
//		isActive = true;
//		actionDelayTimer = 0;
//	}
//}
//else
//{
//	isActive = true;
//}

if (isTemporary)
{
	activeStateTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(activeStateTimer, activeStateTime);
		
	if (_timeIsOver)
	{
		activeStateTimer = 0;
		EnableFlash(activationColour, 1);
		drawColour = inactiveColour;
		currentState = TileState.Deactivation;
		var _position = ds_list_find_index(tilesList, id);
		ds_list_delete(tilesList, _position);
	}
}