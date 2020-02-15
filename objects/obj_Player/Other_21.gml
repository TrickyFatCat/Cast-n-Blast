/// @description ProcessDashRecovery

if (dashCharge < maxDashCharge)
{
	dashCooldownTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(dashCooldownTimer, dashCooldownTime);
	
	if (_timeIsOver)
	{
		IncreaseDashCharge();
		dashCooldownTimer = 0;
	}
}