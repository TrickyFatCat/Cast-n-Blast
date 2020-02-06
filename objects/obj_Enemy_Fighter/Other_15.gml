/// @description Insert description here

// Inherit the parent event
event_inherited();

var _waitTime = SetTime(1);


if (activeWeapon.shotCount == 6)
{
	isShooting = false;
	
	waitTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(waitTimer, _waitTime)
	
	if (_timeIsOver)
	{
		waitTimer = 0;
		activeWeapon.shotCount = 0;
		currentState = EnemyState.TargetSearch;
	}
}
else
{
	isShooting = true;
}