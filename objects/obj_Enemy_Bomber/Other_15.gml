// Inherit the parent event
event_inherited();

if (isWaiting)
{
	currentState = EnemyState.TargetSearch;
}

switch (mainWeapon.currentCastState)
{
	case CastState.Idle:
	break;
	
	case CastState.Process:
		drawScaleY = LerpTimeFactor(1, 1.5, mainWeapon.castProgress);
		drawScaleX = drawScaleY * previousScaleX;
		mainWeapon.directionCurrent = CalculateDirectionToPlayer();
	break;
	
	case CastState.Execute:
		var _lerpAlpha = mainWeapon.shotCount / mainWeapon.castExecuteCount;
		drawScaleY = LerpTimeFactor(1.5, 1, _lerpAlpha);
		drawScaleX = drawScaleY * previousScaleX;
		
		if (mainWeapon.shotCount == mainWeapon.castExecuteCount)
		{
			isShooting = false;
			isWaiting = true;
			drawScaleX = 1;
			drawScaleY = 1;
			currentState = EnemyState.TargetSearch;
			sprite_index = spriteIdle;
		}
	break;
}