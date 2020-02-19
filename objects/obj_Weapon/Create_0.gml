// Inherit the parent event
event_inherited();

// User events
#macro ExecuteAdditionalMechanics	event_user(0)
#macro SpawnProjectile				event_user(1)
#macro EnableHitscan				event_user(2)
#macro SetLaserState				event_user(3)
#macro SwithchLaserDamage			event_user(4)
#macro CalculateLaserSpread 		event_user(5)
#macro RecalculateAmmo				event_user(6)
#macro CalculateRecoil				event_user(7)
#macro ApplyCameraShake				event_user(8)
#macro CalculateRateOfFire			event_user(9)
#macro CalculateSpread				event_user(10)
#macro ExecuteShootModeNormal		event_user(11)
#macro ExecuteShootModeBurst		event_user(12)
#macro ExecuteShootModeCast			event_user(13)
#macro ExecuteShootModeCharge		event_user(14)

#region // General parameters
owner = noone;
directionCurrent = direction;
bulletObjectParent = noone;
isShooting = false;
damage = 0;
heal = 0;
shootAmmoCost = 0;
velocityNoiseFactor = 0;
lasersightAlpha = 1;
#endregion

#region // Ammo parameters
ammoID = 0;
shootAmmoCost = 0;
#endregion

#region // Spread parameters
spreadIsDynamic = false;
spreadIsUniform = false;
spread = 0;
spreadAngleIncrFactor = 0;
spreadAngleDecrFactor = 0;
spreadAngleCurrent = 0;
spreadAngleMin = 0;
spreadAngleMax = 0;
#endregion

#region // Rate of Fire parameters
rateOfFireAccelerated = false;
rateOfFireCurrent = 0;
rateOfFireMin = 0;
rateOfFireMax = 0;
rateOfFireIncrStep = 0;
rateOfFireDecrStep = 0;
shootPauseTimer = 0;
shootPauseIsOver = false;
#endregion

#region // Spawn parameters
bulletSpawnPointOffset = 0;
bulletSpawnPointX = x;
bulletSpawnPointY = y - z;
bulletSpawnDirection = 0;
bulletNumber = 0;
bulletObject = 0;
laserObjects = ds_list_create();
hitscanObjects = ds_list_create();
#endregion

#region // ShootMods
enum ShootMode
{
	Normal,
	Burst,
	Cast,
	Charge
}

currentShootMode = ShootMode.Normal;
#endregion

#region // ShootMode.Burst Parameters
burstShotsNumber = 0;
burstPauseTimer = 0;
checkBurstPause = false;
#endregion

#region // ShootMode.Cast Parameters
castTime = 0;
castExecuteCount = false;
castProgress = 0;
enum CastState
{
	Idle,
	Process,
	Execute
}

currentCastState = CastState.Idle;
#endregion

#region // ShootMode.Charge Parameters
enum ChargeState
{
	Idle,
	Charging,
	Wait,
	Execute
}

currentChargeState = ChargeState.Idle;

chargeTime = 0;
chargeProgress = 0;
chargeExecuteCountMin = 0;
chargeWaitTime = 0;
chargeWaitProgress = 0;
chargeDamageFactor = 1;
chargeHealFactor = 1;
chargeRateFactor = 1;
chargeBulletNumberFactor = 1;
chargeVelocityFactor = 1;
chargeShakeFactor = 1;
#endregion

#region // Visual parameters
weaponSprite = 0;
recoilPower = 0;
recoilPowerCurrent = 0;
recoilFactor = 0;
#endregion

#region // Shake parameters
isShackingCamera = false;
angularShakeEnabled = false;
shakeValue = 0;
shotShakeFactor = 0;
shotShakeFactorCurrent = 0;
#endregion

// Other
collisionTargets = [];
laserSightEnabled = false;
endPointX = 0;
endPointY = 0;
shotCount = 0;
rotationOffset = 1;
rotationOffsetX = 0;
rotationOffsetY = 0;
offsetY = 0;
laserSightColour = c_red;