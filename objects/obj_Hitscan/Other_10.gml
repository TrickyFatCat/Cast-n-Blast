/// @description ProcessHitscan

// Parameters
var _alphaChangeTimer = 0.15;
var _alphaStepFactor = CalculateStep(_alphaChangeTimer);

// Sequence
if (drawAlpha != 0)
{
	drawAlpha = ApproachTimeFactor(drawAlpha, 0, _alphaStepFactor);
}
else
{
	currentState = HitscanState.Idle;
}