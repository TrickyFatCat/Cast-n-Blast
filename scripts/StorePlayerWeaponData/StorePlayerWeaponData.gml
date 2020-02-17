// Parameters
enum PlayerWeapon
{
	PlasmaGun,
	Shotgun,
	UltimateGun
}

global.FirstWeapon = PlayerWeapon.PlasmaGun;
global.LastWeapon = PlayerWeapon.Shotgun;

#macro PlasmaGunData global.PlayerWeaponData[PlayerWeapon.PlasmaGun]
#macro ShotgunData global.PlayerWeaponData[PlayerWeapon.Shotgun]
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
ds_map_add(PlasmaGunData, "damage",							20);
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
ds_map_add(PlasmaGunData, "spreadAngleMin",					15);
ds_map_add(PlasmaGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(PlasmaGunData, "ammoID",							PlayerAmmo.PlasmaGun);
ds_map_add(PlasmaGunData, "shootAmmoCost",					1);
ds_map_add(PlasmaGunData, "reloadTime",						2);
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
//-----------------------------------------------------------------------------

#endregion

#region // Shotgun
ShotgunData = ds_map_create();
ds_map_add(ShotgunData, "weaponSprite",						spr_shotgun);
ds_map_add(ShotgunData, "offsetY",							10);
ds_map_add(ShotgunData, "laserSightEnabled",				false);
ds_map_add(ShotgunData, "isAuto",							true);
ds_map_add(ShotgunData, "currentShootMode",					ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "bulletObject",						obj_PProjectile_Normal);
ds_map_add(ShotgunData, "bulletNumber",						10);
ds_map_add(ShotgunData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "damage",							5);
ds_map_add(ShotgunData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "rateOfFireAccelerated",			false);
ds_map_add(ShotgunData, "rateOfFireIncrStep",				0);
ds_map_add(ShotgunData, "rateOfFireDecrStep",				0);
ds_map_add(ShotgunData, "rateOfFireMin",					2);
ds_map_add(ShotgunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "burstRate",						0);
ds_map_add(ShotgunData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "castExecuteCount",					0);
ds_map_add(ShotgunData, "castTime",							0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "chargeExecuteCountMin",			1);
ds_map_add(ShotgunData, "chargeExecuteCountMax",			0);
ds_map_add(ShotgunData, "chargeTime",						1);
ds_map_add(ShotgunData, "chargeWaitTime",					0);
ds_map_add(ShotgunData, "chargeDamageFactorMax",			4);
ds_map_add(ShotgunData, "chargeHealFactorMax",				0);
ds_map_add(ShotgunData, "chargeRateFactorMax",				0);
ds_map_add(ShotgunData, "chargeBulletNumberFactorMax",		0);
ds_map_add(ShotgunData, "chargeVelocityFactorMax",			20);
ds_map_add(ShotgunData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "spreadIsDynamic",					false);
ds_map_add(ShotgunData, "spreadIsUniform",					false);
ds_map_add(ShotgunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(ShotgunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(ShotgunData, "spreadAngleMin",					30);
ds_map_add(ShotgunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "ammoID",							PlayerAmmo.Shotgun);
ds_map_add(ShotgunData, "shootAmmoCost",					1);
ds_map_add(ShotgunData, "reloadTime",						3);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "recoilPower",						0);
ds_map_add(ShotgunData, "recoilFactor",						0);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "hitscanScaleY",					0);
ds_map_add(ShotgunData, "projectileVelocityNoiseFactor",	0.1);
ds_map_add(ShotgunData, "projectileVelocityCurrent",		10);
ds_map_add(ShotgunData, "projectileVelocityMax",			0);
ds_map_add(ShotgunData, "projectileAcceleration",			0);
ds_map_add(ShotgunData, "projectileFriction",				0.25);
ds_map_add(ShotgunData, "projectileBounceEnable",			true);
ds_map_add(ShotgunData, "projectileBounceFriction",			1);
//-----------------------------------------------------------------------------
ds_map_add(ShotgunData, "isShackingCamera",					true);
ds_map_add(ShotgunData, "angularShakeEnabled",				true);
ds_map_add(ShotgunData, "shakeValue",						1.1);
ds_map_add(ShotgunData, "shotShakeFactor",					1);
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
ds_map_add(UltimateGunData, "damage",							10);
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
ds_map_add(UltimateGunData, "shootAmmoCost",					10);
ds_map_add(UltimateGunData, "reloadTime",						0);
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