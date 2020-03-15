// Inherit the parent event
event_inherited();

switch (mainWeapon.currentCastState)
{
	case CastState.Idle:
	break;
	
	case CastState.Process:
	break;
	
	case CastState.Execute:
		var _lerpAlpha = mainWeapon.shotCount / mainWeapon.castExecuteCount;
		drawScaleY = LerpTimeFactor(1.5, 1, _lerpAlpha);
		drawScaleX = drawScaleY * previousScaleX;
		
		if (!audio_is_playing(sfx_enemy_shot))
		{
			PlaySoundAt(sfx_enemy_shot, 256, false);
		}
		
		if (mainWeapon.shotCount == mainWeapon.castExecuteCount)
		{
			isShooting = false;
			isWaiting = true;
			currentState = EnemyState.TargetSearch;
		}
	break;
}