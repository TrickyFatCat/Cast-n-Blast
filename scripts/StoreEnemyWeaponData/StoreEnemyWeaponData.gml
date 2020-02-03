// Parameters
enum EnemyWeapon
{
	FighterGun,
	TrooperGun
}

#macro EnemyFighterGunData global.EnemyWeaponData[EnemyWeapon.FighterGun]
#macro TrooperGunData global.EnemyWeaponData[EnemyWeapon.TrooperGun]

#region FighterGun
EnemyFighterGunData = ds_map_create();
ds_map_add(EnemyFighterGunData, "weaponSprite",					noone);
ds_map_add(EnemyFighterGunData, "offsetY",						6);
ds_map_add(EnemyFighterGunData, "laserSightEnabled",			false);
ds_map_add(EnemyFighterGunData, "isAuto",						true);
ds_map_add(EnemyFighterGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "bulletObject",					obj_FighterProjectile);
ds_map_add(EnemyFighterGunData, "bulletNumber",					1);
ds_map_add(EnemyFighterGunData, "bulletSpawnPointOffset",		19);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "damage",						5);
ds_map_add(EnemyFighterGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "rateOfFireAccelerated",		false);
ds_map_add(EnemyFighterGunData, "rateOfFireIncrStep",			0);
ds_map_add(EnemyFighterGunData, "rateOfFireDecrStep",			0);
ds_map_add(EnemyFighterGunData, "rateOfFireMin",				4);
ds_map_add(EnemyFighterGunData, "rateOfFireMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "burstRate",					0);
ds_map_add(EnemyFighterGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "castExecuteCount",				0);
ds_map_add(EnemyFighterGunData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "chargeExecuteCountMin",		1);
ds_map_add(EnemyFighterGunData, "chargeExecuteCountMax",		0);
ds_map_add(EnemyFighterGunData, "chargeTime",					1);
ds_map_add(EnemyFighterGunData, "chargeWaitTime",				0);
ds_map_add(EnemyFighterGunData, "chargeDamageFactorMax",		4);
ds_map_add(EnemyFighterGunData, "chargeHealFactorMax",			0);
ds_map_add(EnemyFighterGunData, "chargeRateFactorMax",			0);
ds_map_add(EnemyFighterGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(EnemyFighterGunData, "chargeVelocityFactorMax",		20);
ds_map_add(EnemyFighterGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "spreadIsDynamic",				false);
ds_map_add(EnemyFighterGunData, "spreadIsUniform",				false);
ds_map_add(EnemyFighterGunData, "spreadAngleIncrFactor",		0.2);
ds_map_add(EnemyFighterGunData, "spreadAngleDecrFactor",		0.0075);
ds_map_add(EnemyFighterGunData, "spreadAngleMin",				0);
ds_map_add(EnemyFighterGunData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "ammoID",						noone);
ds_map_add(EnemyFighterGunData, "shootAmmoCost",				0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "recoilPower",					0);
ds_map_add(EnemyFighterGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "hitscanScaleY",				0);
ds_map_add(EnemyFighterGunData, "projectileVelocityNoiseFactor",0);
ds_map_add(EnemyFighterGunData, "projectileVelocityCurrent",	4);
ds_map_add(EnemyFighterGunData, "projectileVelocityMax",		0);
ds_map_add(EnemyFighterGunData, "projectileAcceleration",		0);
ds_map_add(EnemyFighterGunData, "projectileFriction",			0);
ds_map_add(EnemyFighterGunData, "projectileBounceEnable",		false);
ds_map_add(EnemyFighterGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "isShackingCamera",				true);
ds_map_add(EnemyFighterGunData, "angularShakeEnabled",			false);
ds_map_add(EnemyFighterGunData, "shakeValue",					0.75);
ds_map_add(EnemyFighterGunData, "shotShakeFactor",				0.05);
#endregion
#region FighterGun
TrooperGunData = ds_map_create();
ds_map_add(TrooperGunData, "weaponSprite",					noone);
ds_map_add(TrooperGunData, "offsetY",						6);
ds_map_add(TrooperGunData, "laserSightEnabled",				false);
ds_map_add(TrooperGunData, "isAuto",						true);
ds_map_add(TrooperGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "bulletObject",					obj_FighterProjectile);
ds_map_add(TrooperGunData, "bulletNumber",					7);
ds_map_add(TrooperGunData, "bulletSpawnPointOffset",		19);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "damage",						1);
ds_map_add(TrooperGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "rateOfFireAccelerated",			false);
ds_map_add(TrooperGunData, "rateOfFireIncrStep",			0);
ds_map_add(TrooperGunData, "rateOfFireDecrStep",			0);
ds_map_add(TrooperGunData, "rateOfFireMin",					1);
ds_map_add(TrooperGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "burstRate",						0);
ds_map_add(TrooperGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "castExecuteCount",				0);
ds_map_add(TrooperGunData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "chargeExecuteCountMin",			1);
ds_map_add(TrooperGunData, "chargeExecuteCountMax",			0);
ds_map_add(TrooperGunData, "chargeTime",					1);
ds_map_add(TrooperGunData, "chargeWaitTime",				0);
ds_map_add(TrooperGunData, "chargeDamageFactorMax",			4);
ds_map_add(TrooperGunData, "chargeHealFactorMax",			0);
ds_map_add(TrooperGunData, "chargeRateFactorMax",			0);
ds_map_add(TrooperGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(TrooperGunData, "chargeVelocityFactorMax",		20);
ds_map_add(TrooperGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "spreadIsDynamic",				false);
ds_map_add(TrooperGunData, "spreadIsUniform",				true);
ds_map_add(TrooperGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(TrooperGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(TrooperGunData, "spreadAngleMin",				20);
ds_map_add(TrooperGunData, "spreadAngleMax",				0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "ammoID",						noone);
ds_map_add(TrooperGunData, "shootAmmoCost",					0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "recoilPower",					0);
ds_map_add(TrooperGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "hitscanScaleY",					0);
ds_map_add(TrooperGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(TrooperGunData, "projectileVelocityCurrent",		5);
ds_map_add(TrooperGunData, "projectileVelocityMax",			0);
ds_map_add(TrooperGunData, "projectileAcceleration",		0);
ds_map_add(TrooperGunData, "projectileFriction",			0);
ds_map_add(TrooperGunData, "projectileBounceEnable",		false);
ds_map_add(TrooperGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "isShackingCamera",				false);
ds_map_add(TrooperGunData, "angularShakeEnabled",			false);
ds_map_add(TrooperGunData, "shakeValue",					0.75);
ds_map_add(TrooperGunData, "shotShakeFactor",				0.05);
#endregion