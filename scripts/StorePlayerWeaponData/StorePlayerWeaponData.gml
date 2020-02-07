// Parameters
enum PlayerWeapon
{
	PlasmaGun,
	ShotGun,
	UltimateGun
}

#macro PlasmaGunData global.PlayerWeaponData[PlayerWeapon.PlasmaGun]
#macro ShotGunData global.PlayerWeaponData[PlayerWeapon.ShotGun]
#macro UltimateGunData global.PlayerWeaponData[PlayerWeapon.UltimateGun]

#region // Plasma
PlasmaGunData = ds_map_create();
ds_map_add(PlasmaGunData, "weaponSprite",					spr_playerWeapon);
ds_map_add(PlasmaGunData, "offsetY",						10);
ds_map_add(PlasmaGunData, "laserSightEnabled",				false);
ds_map_add(PlasmaGunData, "isAuto",							true);
ds_map_add(PlasmaGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "bulletObject",					obj_PProjectile_Normal);
ds_map_add(PlasmaGunData, "bulletNumber",					1);
ds_map_add(PlasmaGunData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "damage",							1);
ds_map_add(PlasmaGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "rateOfFireAccelerated",			false);
ds_map_add(PlasmaGunData, "rateOfFireIncrStep",				0);
ds_map_add(PlasmaGunData, "rateOfFireDecrStep",				0);
ds_map_add(PlasmaGunData, "rateOfFireMin",					5);
ds_map_add(PlasmaGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "burstRate",						0);
ds_map_add(PlasmaGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "castExecuteCount",				0);
ds_map_add(PlasmaGunData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "chargeExecuteCountMin",			1);
ds_map_add(PlasmaGunData, "chargeExecuteCountMax",			0);
ds_map_add(PlasmaGunData, "chargeTime",						1);
ds_map_add(PlasmaGunData, "chargeWaitTime",					0);
ds_map_add(PlasmaGunData, "chargeDamageFactorMax",			4);
ds_map_add(PlasmaGunData, "chargeHealFactorMax",			0);
ds_map_add(PlasmaGunData, "chargeRateFactorMax",			0);
ds_map_add(PlasmaGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(PlasmaGunData, "chargeVelocityFactorMax",		20);
ds_map_add(PlasmaGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "spreadIsDynamic",				false);
ds_map_add(PlasmaGunData, "spreadIsUniform",				false);
ds_map_add(PlasmaGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(PlasmaGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(PlasmaGunData, "spreadAngleMin",					0);
ds_map_add(PlasmaGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "ammoID",							noone);
ds_map_add(PlasmaGunData, "shootAmmoCost",					1);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "recoilPower",					10);
ds_map_add(PlasmaGunData, "recoilFactor",					0.3);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "hitscanScaleY",					0);
ds_map_add(PlasmaGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(PlasmaGunData, "projectileVelocityCurrent",		14);
ds_map_add(PlasmaGunData, "projectileVelocityMax",			0);
ds_map_add(PlasmaGunData, "projectileAcceleration",			0);
ds_map_add(PlasmaGunData, "projectileFriction",				0);
ds_map_add(PlasmaGunData, "projectileBounceEnable",			false);
ds_map_add(PlasmaGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "isShackingCamera",				true);
ds_map_add(PlasmaGunData, "angularShakeEnabled",			false);
ds_map_add(PlasmaGunData, "shakeValue",						0.7);
ds_map_add(PlasmaGunData, "shotShakeFactor",				0.05);
#endregion

#region // Shotgun
ShotGunData = ds_map_create();
ds_map_add(ShotGunData, "weaponSprite",						noone);
ds_map_add(ShotGunData, "offsetY",							10);
ds_map_add(ShotGunData, "laserSightEnabled",				false);
ds_map_add(ShotGunData, "isAuto",							true);
ds_map_add(ShotGunData, "currentShootMode",					ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "bulletObject",						obj_PProjectile_Normal);
ds_map_add(ShotGunData, "bulletNumber",						5);
ds_map_add(ShotGunData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "damage",							1);
ds_map_add(ShotGunData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "rateOfFireAccelerated",			false);
ds_map_add(ShotGunData, "rateOfFireIncrStep",				0);
ds_map_add(ShotGunData, "rateOfFireDecrStep",				0);
ds_map_add(ShotGunData, "rateOfFireMin",					2);
ds_map_add(ShotGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "burstRate",						0);
ds_map_add(ShotGunData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "castExecuteCount",					0);
ds_map_add(ShotGunData, "castTime",							0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "chargeExecuteCountMin",			1);
ds_map_add(ShotGunData, "chargeExecuteCountMax",			0);
ds_map_add(ShotGunData, "chargeTime",						1);
ds_map_add(ShotGunData, "chargeWaitTime",					0);
ds_map_add(ShotGunData, "chargeDamageFactorMax",			4);
ds_map_add(ShotGunData, "chargeHealFactorMax",				0);
ds_map_add(ShotGunData, "chargeRateFactorMax",				0);
ds_map_add(ShotGunData, "chargeBulletNumberFactorMax",		0);
ds_map_add(ShotGunData, "chargeVelocityFactorMax",			20);
ds_map_add(ShotGunData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "spreadIsDynamic",					false);
ds_map_add(ShotGunData, "spreadIsUniform",					true);
ds_map_add(ShotGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(ShotGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(ShotGunData, "spreadAngleMin",					30);
ds_map_add(ShotGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "ammoID",							noone);
ds_map_add(ShotGunData, "shootAmmoCost",					5);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "recoilPower",						0);
ds_map_add(ShotGunData, "recoilFactor",						0);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "hitscanScaleY",					0);
ds_map_add(ShotGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(ShotGunData, "projectileVelocityCurrent",		8);
ds_map_add(ShotGunData, "projectileVelocityMax",			0);
ds_map_add(ShotGunData, "projectileAcceleration",			0);
ds_map_add(ShotGunData, "projectileFriction",				0.33);
ds_map_add(ShotGunData, "projectileBounceEnable",			false);
ds_map_add(ShotGunData, "projectileBounceFriction",			2);
//-----------------------------------------------------------------------------
ds_map_add(ShotGunData, "isShackingCamera",					true);
ds_map_add(ShotGunData, "angularShakeEnabled",				true);
ds_map_add(ShotGunData, "shakeValue",						1.1);
ds_map_add(ShotGunData, "shotShakeFactor",					1);
#endregion

#region // Ultimate
UltimateGunData = ds_map_create();
ds_map_add(UltimateGunData, "weaponSprite",						noone);
ds_map_add(UltimateGunData, "offsetY",							10);
ds_map_add(UltimateGunData, "laserSightEnabled",				false);
ds_map_add(UltimateGunData, "isAuto",							true);
ds_map_add(UltimateGunData, "currentShootMode",					ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "bulletObject",						obj_UltimateLaser);
ds_map_add(UltimateGunData, "bulletNumber",						1);
ds_map_add(UltimateGunData, "bulletSpawnPointOffset",			24);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "damage",							1);
ds_map_add(UltimateGunData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "rateOfFireAccelerated",			false);
ds_map_add(UltimateGunData, "rateOfFireIncrStep",				0);
ds_map_add(UltimateGunData, "rateOfFireDecrStep",				0);
ds_map_add(UltimateGunData, "rateOfFireMin",					50);
ds_map_add(UltimateGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "burstRate",						0);
ds_map_add(UltimateGunData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "castExecuteCount",					0);
ds_map_add(UltimateGunData, "castTime",							0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "chargeExecuteCountMin",			1);
ds_map_add(UltimateGunData, "chargeExecuteCountMax",			0);
ds_map_add(UltimateGunData, "chargeTime",						1);
ds_map_add(UltimateGunData, "chargeWaitTime",					0);
ds_map_add(UltimateGunData, "chargeDamageFactorMax",			4);
ds_map_add(UltimateGunData, "chargeHealFactorMax",				0);
ds_map_add(UltimateGunData, "chargeRateFactorMax",				0);
ds_map_add(UltimateGunData, "chargeBulletNumberFactorMax",		0);
ds_map_add(UltimateGunData, "chargeVelocityFactorMax",			30);
ds_map_add(UltimateGunData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "spreadIsDynamic",					false);
ds_map_add(UltimateGunData, "spreadIsUniform",					false);
ds_map_add(UltimateGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(UltimateGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(UltimateGunData, "spreadAngleMin",					0);
ds_map_add(UltimateGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "ammoID",							noone);
ds_map_add(UltimateGunData, "shootAmmoCost",					1);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "recoilPower",						0);
ds_map_add(UltimateGunData, "recoilFactor",						0);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "hitscanScaleY",					5);
ds_map_add(UltimateGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(UltimateGunData, "projectileVelocityCurrent",		8);
ds_map_add(UltimateGunData, "projectileVelocityMax",			0);
ds_map_add(UltimateGunData, "projectileAcceleration",			0);
ds_map_add(UltimateGunData, "projectileFriction",				0.33);
ds_map_add(UltimateGunData, "projectileBounceEnable",			false);
ds_map_add(UltimateGunData, "projectileBounceFriction",			2);
//-----------------------------------------------------------------------------
ds_map_add(UltimateGunData, "isShackingCamera",					true);
ds_map_add(UltimateGunData, "angularShakeEnabled",				true);
ds_map_add(UltimateGunData, "shakeValue",						0.75);
ds_map_add(UltimateGunData, "shotShakeFactor",					0.1);
#endregion