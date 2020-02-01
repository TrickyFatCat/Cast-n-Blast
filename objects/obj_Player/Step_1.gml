/// @description Insert description here

// Inherit the parent event
event_inherited();

ChekPlayerHP;

maxVelocity = defaultMaxVelocity * legsFactor;

shieldIsActive = sys_GameManager.keyShield && energy > 0;

var _keyShoot = sys_GameManager.keyShootAuto || sys_GameManager.keyShootSemiAuto; 

if (_keyShoot)
{
	energyRestoreFactor = 0;
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

if (energy < maxEnergy && canRestore)
{
	var _restoreEnergyDelay = CalculateShootPause(energyRestoreRate);
	var _restoreIsReady = CheckTimer(energyRestoreTimer, _restoreEnergyDelay);

	if (_restoreIsReady)
	{
		IncreaseEnergy(1);
		ammoCurrent = energy;
		ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID],"ammoCurrent",ammoCurrent);
		energyRestoreTimer = 0;
	}
	
	energyRestoreTimer += global.TimeFactor;
}

if (energy == 0)
{
	canRestore = false;
}

if (!canRestore)
{
	energyPenaltyTimer += global.TimeFactor;
	
	EnableFlash(c_orange, 1);
	
	var _timeIsOver = CheckTimer(energyPenaltyTimer, energyPenaltyTime);
	
	if (_timeIsOver)
	{
		canRestore = true;
		energyPenaltyTimer = 0;
	}
}