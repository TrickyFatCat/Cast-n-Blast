/// @description TrancendenceStateController

// Parameters

var _step = CalculateStep(0.25);
var _targetScale = 1.2;

if (activeWeapon.isShooting)
{
	activeWeapon.isShooting = false;
}

trancendenceProgress = ApproachTimeFactor(trancendenceProgress, 1, _step);
drawScaleX = LerpTimeFactor(drawScaleX, _targetScale, trancendenceProgress);
drawScaleY = abs(drawScaleX);
		
with (activeWeapon)
{
	drawScaleX = other.drawScaleX;
	drawScaleY = other.drawScaleY;
}

EnableFlash(c_red, 0.75)
		
if (drawScaleX >= _targetScale)
{
	var _trancendenceTime = SetTime(1);
	
	trancendenceTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(trancendenceTimer, _trancendenceTime);
	
	if (_timeIsOver)
	{
		currentState = PlayerState.Death;
	}
}