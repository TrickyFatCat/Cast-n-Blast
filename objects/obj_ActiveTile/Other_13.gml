/// @description ProcessTileDeactivation

var _step = CalculateStep(stateSwitchTime);
		
if (stateSwitchProgress != 0)
{
	stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 0, _step);
	drawAlpha = stateSwitchProgress;
}
else
{
	drawColour = c_gray;
	fillScaleX = 0;
	stateSwitchProgress = 0;
	currentState = TileState.Inactive;
}