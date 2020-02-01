// Parameters
enum EnemyWeapon
{
	Pistol
}

#macro EnemyPistolData global.EnemyWeaponData[EnemyWeapon.Pistol]

// Weapons data
global.EnemyWeaponData[EnemyWeapon.Pistol] = ds_map_create();
ds_map_add(EnemyPistolData, "weaponSprite",					spr_playerWeapon);
ds_map_add(EnemyPistolData, "offsetY",						6);
ds_map_add(EnemyPistolData, "laserSightEnabled",			false);
ds_map_add(EnemyPistolData, "isAuto",						true);
ds_map_add(EnemyPistolData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "bulletObject",					obj_PProjectile_Normal);
ds_map_add(EnemyPistolData, "bulletNumber",					1);
ds_map_add(EnemyPistolData, "bulletSpawnPointOffset",		19);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "damage",						5);
ds_map_add(EnemyPistolData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyPistolData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyPistolData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyPistolData, "rateOfFireMin",				8);
ds_map_add(EnemyPistolData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "burstRate",					0);
ds_map_add(EnemyPistolData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "castExecuteCount",				0);
ds_map_add(EnemyPistolData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "chargeExecuteCountMin",		1);
ds_map_add(EnemyPistolData, "chargeExecuteCountMax",		0);
ds_map_add(EnemyPistolData, "chargeTime",					1);
ds_map_add(EnemyPistolData, "chargeWaitTime",				0);
ds_map_add(EnemyPistolData, "chargeDamageFactorMax",		4);
ds_map_add(EnemyPistolData, "chargeHealFactorMax",			0);
ds_map_add(EnemyPistolData, "chargeRateFactorMax",			0);
ds_map_add(EnemyPistolData, "chargeBulletNumberFactorMax",	0);
ds_map_add(EnemyPistolData, "chargeVelocityFactorMax",		20);
ds_map_add(EnemyPistolData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "spreadIsDynamic",				false);
ds_map_add(EnemyPistolData, "spreadIsUniform",				false);
ds_map_add(EnemyPistolData, "spreadAngleIncrFactor",		0.2);
ds_map_add(EnemyPistolData, "spreadAngleDecrFactor",		0.0075);
ds_map_add(EnemyPistolData, "spreadAngleMin",				0);
ds_map_add(EnemyPistolData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "ammoID",						PlayerAmmo.Weapon);
ds_map_add(EnemyPistolData, "shootAmmoCost",				1);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "recoilPower",					10);
ds_map_add(EnemyPistolData, "recoilFactor",					0.3);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "hitscanScaleY",				0);
ds_map_add(EnemyPistolData, "projectileVelocityNoiseFactor",0);
ds_map_add(EnemyPistolData, "projectileVelocityCurrent",	20);
ds_map_add(EnemyPistolData, "projectileVelocityMax",		0);
ds_map_add(EnemyPistolData, "projectileAcceleration",		0);
ds_map_add(EnemyPistolData, "projectileFriction",			0);
ds_map_add(EnemyPistolData, "projectileBounceEnable",		false);
ds_map_add(EnemyPistolData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(EnemyPistolData, "isShackingCamera",				true);
ds_map_add(EnemyPistolData, "angularShakeEnabled",			false);
ds_map_add(EnemyPistolData, "shakeValue",					0.75);
ds_map_add(EnemyPistolData, "shotShakeFactor",				0.05);