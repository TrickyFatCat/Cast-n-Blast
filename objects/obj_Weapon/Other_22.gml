/// @description ShootModeBurst

var _burstDelay = 1 / burstRate;
var _burstTime = SetTime(_burstDelay);
		
if (isShooting)
{
	checkBurstPause = CheckTimer(burstPauseTimer, _burstTime);
}
		
if (checkBurstPause)
{
	if (shotCount < round(burstShotsNumber))
	{
		isShooting = true;
		ExecuteShootModeNormal;
	}
	else
	{
		isShooting = false;
		burstPauseTimer = 0;
		checkBurstPause = CheckTimer(burstPauseTimer, _burstTime);
		shotCount = 0;
	}
}
		
burstPauseTimer += global.TimeFactor;