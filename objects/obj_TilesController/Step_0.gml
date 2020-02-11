if (isActive)
{
	switchingTilesTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(switchingTilesTimer, switchingTilesTime);
	
	if (_timeIsOver)
	{	
		ActivateTemporaryTiles();
	}
}