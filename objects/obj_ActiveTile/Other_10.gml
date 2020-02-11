/// @description ProcessTileReveal

var _step = CalculateStep(stateSwitchTime);
		
if (stateSwitchProgress != 1)
{
	stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 1, _step);
	drawAlpha = stateSwitchProgress;
}
else
{
	stateSwitchProgress = 0;
	currentState = TileState.Activation;
}