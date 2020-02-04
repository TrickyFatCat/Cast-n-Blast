/// @description Trancendence

var _trancendenceTime = 1;
var _scaleStepFactor = CalculateStep(_trancendenceTime);
var _targetScaleY = 2;


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