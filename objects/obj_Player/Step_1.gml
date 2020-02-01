/// @description Insert description here

// Inherit the parent event
event_inherited();

ChekPlayerHP;

maxVelocity = defaultMaxVelocity * legsFactor;
dashVelocity = deafaultDashVelocity * legsFactor;
dashCost = round(defaultDashCost - defaultDashCost * (1 - legsFactor));

shieldIsActive = sys_GameManager.keyShield && energy > 0;

var _keyShoot = sys_GameManager.keyShootAuto || sys_GameManager.keyShootSemiAuto; 

if (_keyShoot && canRestore)
{
	energyRestoreFactor = 0;
	if (canRestore && energy > 0)
	{
		canRestore = false;
		energyPenaltyTime = SetTime(1.5);
	}
}
else
{
	energyRestoreFactor = 1;
}

if (shieldIsActive && (!_keyShoot))
{
	energyRestoreFactor = 0.5 / caseFactor;
}

maxEnergy = defaultMaxEnergy * caseFactor;
energyRestoreRate = energyDefaultRestoreRate * energyRestoreFactor * caseFactor;
var _energyRestoreDelay = SetTime(1 / energyRestoreRate);

if (energy < maxEnergy && canRestore)
{
	energyRestoreTimer += global.TimeFactor;
	var _restoreIsReady = CheckTimer(energyRestoreTimer, _energyRestoreDelay);

	if (_restoreIsReady)
	{
		IncreaseEnergy(1);
		ammoCurrent = energy;
		ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID],"ammoCurrent",ammoCurrent);
		energyRestoreTimer = 0;
	}
}

if (energy == 0 && canRestore)
{
	canRestore = false;
	energyPenaltyTime = SetTime(2);
}

if (!canRestore && !_keyShoot)
{
	EnableFlash(c_orange, 1);
		
	var _timeIsOver = CheckTimer(energyPenaltyTimer, energyPenaltyTime);
	
	energyPenaltyTimer += global.TimeFactor;
	
	if (_timeIsOver)
	{
		canRestore = true;
		energyPenaltyTimer = 0;
		energyRestoreTimer = _energyRestoreDelay;
	}
}