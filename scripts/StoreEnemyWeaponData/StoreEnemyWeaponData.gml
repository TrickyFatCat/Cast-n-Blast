// Parameters
enum EnemyWeapon
{
	Pistol
}

#macro EnemyPistolData global.EnemyWeaponData[EnemyWeapon.Pistol]

// Weapons data
global.EnemyWeaponData[EnemyWeapon.Pistol] = ds_map_create();
ds_map_add(EnemyPistolData, "weaponSprite",					noone);
ds_map_add(EnemyPistolData, "offsetY",						4);
ds_map_add(EnemyPistolData, "laserSightEnabled",			false);
ds_map_add(EnemyPistolData, "isAuto",						true);
ds_map_add(EnemyPistolData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "bulletObject",					obj_laserE_laser);
ds_map_add(EnemyPistolData, "bulletNumber",					1);
ds_map_add(EnemyPistolData, "bulletSpawnPointOffset",		3);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "damage",						5);
ds_map_add(EnemyPistolData, "heal",							10);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyPistolData, "rateOfFireIncrStep",			0.5);
ds_map_add(EnemyPistolData, "rateOfFireDecrStep",			0.5);
ds_map_add(EnemyPistolData, "rateOfFireMin",				1);
ds_map_add(EnemyPistolData, "rateOfFireMax",				8);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "burstRate",					1.5);
ds_map_add(EnemyPistolData, "burstShotsNumber",				4);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "castExecuteCount",				false);
ds_map_add(EnemyPistolData, "castTime",						1.5);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "chargeExecuteCountMin",		3);
ds_map_add(EnemyPistolData, "chargeExecuteCountMax",		3);
ds_map_add(EnemyPistolData, "chargeTime",					3);
ds_map_add(EnemyPistolData, "chargeWaitTime",				0);
ds_map_add(EnemyPistolData, "chargeDamageFactorMax",		2);
ds_map_add(EnemyPistolData, "chargeHealFactorMax",			0);
ds_map_add(EnemyPistolData, "chargeRateFactorMax",			0);
ds_map_add(EnemyPistolData, "chargeBulletNumberFactorMax",	0);
ds_map_add(EnemyPistolData, "chargeVelocityFactorMax",		0);
ds_map_add(EnemyPistolData, "chargeShakeFactorMax",			0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "spreadIsDynamic",				false);
ds_map_add(EnemyPistolData, "spreadIsUniform",				false);
ds_map_add(EnemyPistolData, "spreadAngleIncrFactor",		1);
ds_map_add(EnemyPistolData, "spreadAngleDecrFactor",		5);
ds_map_add(EnemyPistolData, "spreadAngleMin",				10);
ds_map_add(EnemyPistolData, "spreadAngleMax",				10);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "ammoID",						noone);
ds_map_add(EnemyPistolData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "recoilPower",					20);
ds_map_add(EnemyPistolData, "recoilFactor",					0.3);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "hitscanScaleY",				2);
ds_map_add(EnemyPistolData, "projectileVelocityNoiseFactor",	0.1);
ds_map_add(EnemyPistolData, "projectileVelocityCurrent",	15);
ds_map_add(EnemyPistolData, "projectileVelocityMax",		3);
ds_map_add(EnemyPistolData, "projectileAcceleration",		0);
ds_map_add(EnemyPistolData, "projectileFriction",			0.1);
ds_map_add(EnemyPistolData, "projectileBounceEnable",		true);
ds_map_add(EnemyPistolData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "isShackingCamera",				false);
ds_map_add(EnemyPistolData, "angularShakeEnabled",			true);
ds_map_add(EnemyPistolData, "shakeValue",					2);
ds_map_add(EnemyPistolData, "shotShakeFactor",				0.05);