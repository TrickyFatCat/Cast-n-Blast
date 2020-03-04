// Inherit the parent event
event_inherited();

var _waitTime = SetTime(3);

if (isWaiting)
{
	waitTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(waitTimer, _waitTime)
	
	if (_timeIsOver)
	{
		waitTimer = 0;
		mainWeapon.shotCount = 0;
		isWaiting = false;
	}
}
else
{
	isShooting = true;
	previousScaleX = sign(drawScaleX);
}