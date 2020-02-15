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
shieldIsActive = _shieldKey && energy > 0;

if (shieldIsActive && ultimateState == UltimateState.Idle)
{
	drawColour = c_aqua;
	canRestore = false;
}
else if (ultimateState == UltimateState.Idle)
{
	drawColour = c_white;
}

if (sys_GameManager.actionStopShieldieng && canRestore)
{
	canRestore = false;
	energyPenaltyTimer = 0;
}

var _energyRestoreDelay = SetTime(1 / (energyRestoreRate));

if (energy < maxEnergy && canRestore)
{
	energyRestoreTimer += global.TimeFactor;
	var _restoreIsReady = CheckTimer(energyRestoreTimer, _energyRestoreDelay);

	if (_restoreIsReady)
	{
		IncreaseEnergy(1);
		energyRestoreTimer = 0;
	}
}

if (!canRestore && !_shieldKey)
{
	energyPenaltyTimer += global.TimeFactor;
	
	var _timeIsOver = CheckTimer(energyPenaltyTimer, energyPenaltyTime);
	
	if (_timeIsOver)
	{
		canRestore = true;
		energyPenaltyTimer = 0;
		energyRestoreTimer = _energyRestoreDelay;
	}
}