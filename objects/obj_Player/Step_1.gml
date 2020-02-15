// Inherit the parent event
event_inherited();

CheckPlayerHP;

if (global.CurrentInput == InputMethod.Gamepad)
{
	activeWeapon.laserSightEnabled = true;
	activeWeapon.lasersightAlpha = drawAlpha;
}
else
{
	activeWeapon.laserSightEnabled = false;
}

ProcessDashRecovery;

var _shieldKey = sys_GameManager.keyShield;
shieldIsActive = _shieldKey && shieldPoints > 0;

if (shieldIsActive && ultimateState == UltimateState.Idle)
{
	drawColour = c_aqua;
	shieldCanRestore = false;
}
else if (ultimateState == UltimateState.Idle)
{
	drawColour = c_white;
}

if (sys_GameManager.actionStopShieldieng && shieldCanRestore)
{
	shieldCanRestore = false;
	shieldRestorePenaltyTimer = 0;
}

var _energyRestoreDelay = SetTime(1 / (shieldRestoreRate));

if (shieldPoints < maxShieldPoints && shieldCanRestore)
{
	shieldRestoreTimer += global.TimeFactor;
	var _restoreIsReady = CheckTimer(shieldRestoreTimer, _energyRestoreDelay);

	if (_restoreIsReady)
	{
		IncreaseShieldPoints(1);
		shieldRestoreTimer = 0;
	}
}

if (!shieldCanRestore && !_shieldKey)
{
	shieldRestorePenaltyTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(shieldRestorePenaltyTimer, shieldRestorePenaltyTime);
	
	if (_timeIsOver)
	{
		shieldCanRestore = true;
		shieldRestorePenaltyTimer = 0;
		shieldRestoreTimer = _energyRestoreDelay;
	}
}