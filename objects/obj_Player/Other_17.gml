/// @description TrancendenceStateController

// Parameters

if (activeWeapon.isShooting)
{
	activeWeapon.isShooting = false;
}

velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);

var _step = CalculateStep(0.25);

//audio_stop_sound(global.Music);

//if (!audio_is_playing(sfx_deathtimer))
//{
//	audio_play_sound(sfx_deathtimer, 1000, true);
//}

trancendenceProgress = ApproachTimeFactor(trancendenceProgress, 1, _step);
drawScaleY = ApproachTimeFactor(drawScaleY, targetScale, trancendenceProgress);
drawScaleX = drawScaleY * scaleSign;
		
with (activeWeapon)
{
	drawScaleX = other.drawScaleX;
	drawScaleY = other.drawScaleY;
}

EnableFlash(c_red, 0.75)
		
if (abs(drawScaleX) >= targetScale)
{
	var _trancendenceTime = SetTime(1);
	
	trancendenceTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(trancendenceTimer, _trancendenceTime);
	
	if (_timeIsOver)
	{
		ProcessDeath;
		currentState = PlayerState.Death;
	}
}
