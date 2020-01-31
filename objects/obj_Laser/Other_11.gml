/// @description ExecuteEndSequence
		
// Parameters
var _endTime = 0.1;
var _scaleStepFactor = CalculateStep(_endTime);

// Sequence
if (drawScaleY > 0)
{
	var _scaleStep = drawScaleYMax * _scaleStepFactor;
	drawScaleY = ApproachTimeFactor(drawScaleY, 0, _scaleStep);
}
else
{
	currentState = LaserState.Idle;
}