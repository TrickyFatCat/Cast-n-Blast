/// @description ExecuteStartSequence

// Parameters
var _startTime = 0.1;
var _scaleStepFactor = CalculateStep(_startTime);

// Sequence
if (drawScaleY < drawScaleYMax)
{
	var _scaleStep = drawScaleYMax * _scaleStepFactor;
	drawScaleY = ApproachTimeFactor(drawScaleY, drawScaleYMax, _scaleStep);
}
else
{
	currentState = LaserState.Active;
}