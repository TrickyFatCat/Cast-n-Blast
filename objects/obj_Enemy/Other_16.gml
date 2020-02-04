/// @description StateTrancendenceController

var _trancendenceTime = 0.15;
var _scaleStepFactor = CalculateStep(_trancendenceTime);
var _targetScaleY = 1.5;

// Sequence
if (drawScaleY < _targetScaleY)
{
	var _scaleStep = _targetScaleY * _scaleStepFactor;
	drawScaleY = ApproachTimeFactor(drawScaleY, _targetScaleY, _scaleStep);
	drawScaleX = drawScaleY * previousScaleX;
}
else
{
	currentState = EnemyState.Death;
}