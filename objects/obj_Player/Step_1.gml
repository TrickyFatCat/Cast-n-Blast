// Inherit the parent event
event_inherited();

ChekPlayerHP;

if (global.CurrentInput == InputMethod.Gamepad)
{
	activeWeapon.laserSightEnabled = true;
	activeWeapon.lasersightAlpha = drawAlpha;
}
else
{
	activeWeapon.laserSightEnabled = false;
}

shieldIsActive = sys_GameManager.keyShield && energy > 0;
isBounceable = shieldIsActive;

if (shieldIsActive && ultimateState == UltimateState.Idle)
{
	drawColour = c_aqua;
}
else if (ultimateState == UltimateState.Idle)
{
	drawColour = c_white;
}

var _keyShoot = sys_GameManager.keyShootAuto || sys_GameManager.keyShootSemiAuto || sys_GameManager.keySecondaryShootAuto || sys_GameManager.keySecondaryShootSemiAuto; 

if (_keyShoot && canRestore)
{
	energyRestoreFactor = 0;
}
else
{
	energyRestoreFactor = 1;
}

if (sys_GameManager.actionStopShooting && canRestore && !isOverheated)
{
	canRestore = false;
	energyPenaltyTime = SetTime(shootPenaltyTime);
	energyPenaltyTimer = 0;
}

if (shieldIsActive && (!_keyShoot))
{
	energyRestoreFactor = shieldRestoreFactor;
}

var _energyRestoreDelay = SetTime(1 / (energyRestoreRate * energyRestoreFactor));

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

if (energy <= 0 && !isOverheated)
{
	canRestore = false;
	energyPenaltyTime = SetTime(overheatPenaltyTime);
	energyPenaltyTimer = 0;
	isOverheated = true;
}

if (!canRestore)
{
	if (isOverheated)
	{
		EnableFlash(c_orange, 1);
	}
		
	var _timeIsOver = CheckTimer(energyPenaltyTimer, energyPenaltyTime);
	
	energyPenaltyTimer += global.TimeFactor;
	
	if (_timeIsOver)
	{
		canRestore = true;
		energyPenaltyTimer = 0;
		energyRestoreTimer = _energyRestoreDelay;
		if (isOverheated)
		{
			isOverheated = false;
			energy = 25;
		}
	}
}