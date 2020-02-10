/// @description ProcessTileActivation

var _step = CalculateStep(stateSwitchTime);
		
if (stateSwitchProgress != 1)
{
	stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 1, _step);
	fillScaleX = LerpTimeFactor(0, 64, stateSwitchProgress);
	fillScaleY = fillScaleX;
	drawColour = merge_color(c_gray, c_red, stateSwitchProgress);
}
else
{
	currentState = ActiveTileState.Active;
}