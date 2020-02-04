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

LegsAffect();
CaseAffect();
WeaponAffect();

shieldIsActive = sys_GameManager.keyShield && energy > 0;

var _keyShoot = sys_GameManager.keyShootAuto || sys_GameManager.keyShootSemiAuto; 

if (_keyShoot && canRestore)
{
	energyRestoreFactor = 0;
}
else
{
	energyRestoreFactor = 1;
}

if (sys_GameManager.actionStopShooting && canRestore && energy > 0)
{
	canRestore = false;
	energyPenaltyTime = SetTime(shootPenaltyTime);
}

if (shieldIsActive && (!_keyShoot))
{
	energyRestoreFactor = shieldFactor;
}

var _energyRestoreDelay = SetTime(1 / energyRestoreRate);

if (energy < maxEnergy && canRestore)
{
	energyRestoreTimer += global.TimeFactor;
	var _restoreIsReady = CheckTimer(energyRestoreTimer, _energyRestoreDelay);

	if (_restoreIsReady)
	{
		IncreaseEnergy(1);
		ammoCurrent = energy;
		energyRestoreTimer = 0;
	}
}

if (energy == 0 && canRestore)
{
	canRestore = false;
	energyPenaltyTime = SetTime(overheatPenaltyTime);
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
		}
	}
}