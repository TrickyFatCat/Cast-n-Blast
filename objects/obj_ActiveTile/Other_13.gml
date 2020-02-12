/// @description ProcessTileDeactivation

var _step = CalculateStep(stateSwitchTime);
		
if (stateSwitchProgress != 0)
{
	stateSwitchProgress = ApproachTimeFactor(stateSwitchProgress, 0, _step);
	drawAlpha = stateSwitchProgress;
}
else
{
	drawColour = inactiveColour;
	fillScaleX = 0;
	stateSwitchProgress = 0;
	image_index = 0;
	currentState = TileState.Inactive;
	instance_deactivate_object(id);
}