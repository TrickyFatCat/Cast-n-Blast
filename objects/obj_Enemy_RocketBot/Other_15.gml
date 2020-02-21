/// @description Insert description here

// Inherit the parent event
event_inherited();

var _waitTime = SetTime(4);

switch (mainWeapon.currentCastState)
{
	case CastState.Idle:
		var _timeIsOver = CheckTimer(waitTimer, _waitTime)
		
		if (mainWeapon.shotCount == mainWeapon.castExecuteCount)
		{
			waitTimer += global.TimeFactor;
	
			if (_timeIsOver)
			{
				waitTimer = 0;
				mainWeapon.shotCount = 0;
			}
		}
		else
		{
			isShooting = true;
			previousScaleX = sign(drawScaleX);
		}
	break;
	
	case CastState.Process:
	break;
	
	case CastState.Execute:
		var _lerpAlpha = mainWeapon.shotCount / mainWeapon.castExecuteCount;
		drawScaleY = LerpTimeFactor(1.5, 1, _lerpAlpha);
		drawScaleX = drawScaleY * previousScaleX;
		
		if (mainWeapon.shotCount == mainWeapon.castExecuteCount)
		{
			isShooting = false;
			currentState = EnemyState.TargetSearch;
		}
	break;
}