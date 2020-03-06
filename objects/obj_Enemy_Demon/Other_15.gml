// Inherit the parent event
event_inherited();

var _waitTime = SetTime(3);

switch (mainWeapon.currentCastState)
{
	case CastState.Idle:
	break;
	
	case CastState.Process:
		drawScaleY = LerpTimeFactor(1, 1.5, mainWeapon.castProgress);
		drawScaleX = drawScaleY * previousScaleX;
		sprite_index = spr_trooper_startAttack;
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