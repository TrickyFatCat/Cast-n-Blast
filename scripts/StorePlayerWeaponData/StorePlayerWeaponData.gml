// Parameters
enum PlayerWeapon
{
	Weapon
}

#macro TestWeapon global.PlayerWeaponData[PlayerWeapon.Weapon]

// Weapons data
global.PlayerWeaponData[PlayerWeapon.Weapon] = ds_map_create();
ds_map_add(TestWeapon, "weaponSprite",					spr_weapon);
ds_map_add(TestWeapon, "offsetY",						4);
ds_map_add(TestWeapon, "laserSightEnabled",				false);
ds_map_add(TestWeapon, "isAuto",							true);
ds_map_add(TestWeapon, "currentShootMode",				ShootMode.Charge);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "bulletObject",					obj_PProjectile_Normal);
ds_map_add(TestWeapon, "bulletNumber",					1);
ds_map_add(TestWeapon, "bulletSpawnPointOffset",			0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "damage",							5);
ds_map_add(TestWeapon, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "rateOfFireAccelerated",			false);
ds_map_add(TestWeapon, "rateOfFireIncrStep",				0);
ds_map_add(TestWeapon, "rateOfFireDecrStep",				0);
ds_map_add(TestWeapon, "rateOfFireMin",					2);
ds_map_add(TestWeapon, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "burstRate",						0);
ds_map_add(TestWeapon, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "castExecuteCount",				0);
ds_map_add(TestWeapon, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "chargeExecuteCountMin",			1);
ds_map_add(TestWeapon, "chargeExecuteCountMax",			0);
ds_map_add(TestWeapon, "chargeTime",						1);
ds_map_add(TestWeapon, "chargeWaitTime",					0);
ds_map_add(TestWeapon, "chargeDamageFactorMax",			4);
ds_map_add(TestWeapon, "chargeHealFactorMax",			0);
ds_map_add(TestWeapon, "chargeRateFactorMax",			0);
ds_map_add(TestWeapon, "chargeBulletNumberFactorMax",	0);
ds_map_add(TestWeapon, "chargeVelocityFactorMax",		20);
ds_map_add(TestWeapon, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "spreadIsDynamic",				false);
ds_map_add(TestWeapon, "spreadIsUniform",				false);
ds_map_add(TestWeapon, "spreadAngleIncrFactor",			0.2);
ds_map_add(TestWeapon, "spreadAngleDecrFactor",			0.0075);
ds_map_add(TestWeapon, "spreadAngleMin",					0);
ds_map_add(TestWeapon, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "ammoID",						PlayerAmmo.Weapon);
ds_map_add(TestWeapon, "shootAmmoCost",					1);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "recoilPower",					0);
ds_map_add(TestWeapon, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "hitscanScaleY",					2);
ds_map_add(TestWeapon, "projectileVelocityNoiseFactor",	0);
ds_map_add(TestWeapon, "projectileVelocityCurrent",		1);
ds_map_add(TestWeapon, "projectileVelocityMax",			0);
ds_map_add(TestWeapon, "projectileAcceleration",			0);
ds_map_add(TestWeapon, "projectileFriction",				0);
ds_map_add(TestWeapon, "projectileBounceEnable",			false);
ds_map_add(TestWeapon, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(TestWeapon, "isShackingCamera",				true);
ds_map_add(TestWeapon, "angularShakeEnabled",			false);
ds_map_add(TestWeapon, "shakeValue",						1);
ds_map_add(TestWeapon, "shotShakeFactor",				1);