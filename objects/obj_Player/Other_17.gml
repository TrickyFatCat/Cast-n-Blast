/// @description TrancendenceStateController

// Parameters

if (activeWeapon.isShooting)
{
	activeWeapon.isShooting = false;
}

var _step = CalculateStep(0.25);

//audio_stop_sound(global.Music);

//if (!audio_is_playing(sfx_deathtimer))
//{
//	audio_play_sound(sfx_deathtimer, 1000, true);
//}

trancendenceProgress = ApproachTimeFactor(trancendenceProgress, 1, _step);
drawScaleX = LerpTimeFactor(drawScaleX, targetScale, trancendenceProgress);
drawScaleY = abs(drawScaleX);
		
with (activeWeapon)
{
	drawScaleX = other.drawScaleX;
	drawScaleY = other.drawScaleY;
}

EnableFlash(c_red, 0.75)
		
if (drawScaleX >= targetScale)
{
	var _trancendenceTime = SetTime(1);
	
	trancendenceTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(trancendenceTimer, _trancendenceTime);
	
	if (_timeIsOver)
	{
		currentState = PlayerState.Death;
	}
}
