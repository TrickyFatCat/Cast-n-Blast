/// @description ProcessTileActivation

var _step = CalculateStep(stateSwitchTime);
		
if (stateSwitchProgress != 1)
{
	stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 1, _step);
	fillOffset = round(LerpTimeFactor(0, maxFillOffset, stateSwitchProgress));
	drawColour = merge_color(inactiveColour, activeColour, stateSwitchProgress);
}
else
{
	EnableFlash(activationColour, 1);
	currentState = TileState.Active;
}