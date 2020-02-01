/// @description StateTrancendenceController

var _trancendenceTime = 0.15;
var _scaleStepFactor = CalculateStep(_trancendenceTime);
var _targetScale = 1.25;

// Sequence
if (drawScaleX < _targetScale)
{
	var _scaleStep = _targetScale * _scaleStepFactor;
	drawScaleX = ApproachTimeFactor(drawScaleX, _targetScale, _scaleStep);
	drawScaleY = drawScaleX;
}
else
{
	currentState = EnemyState.Death;
}