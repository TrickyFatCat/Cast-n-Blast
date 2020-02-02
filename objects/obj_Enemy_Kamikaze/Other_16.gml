/// @description Trancendence

var _trancendenceTime = 1;
var _scaleStepFactor = CalculateStep(_trancendenceTime);
var _targetScale = 2;

// Sequence

if (drawScaleX < _targetScale)
{
	var _scaleStep = _targetScale * _scaleStepFactor;
	drawScaleX = ApproachTimeFactor(drawScaleX, _targetScale, _scaleStep);
	drawScaleY = drawScaleX;
	EnableFlash(c_red, 1);
}
else
{
	currentState = EnemyState.Death;
}