// Parameters
enum EnemyWeapon
{
	FighterGun,
	TrooperGun,
	BeamerGun,
	NinjaGun,
	TurretGun,
	RocketGun
}

#macro EnemyFighterGunData	global.EnemyWeaponData[EnemyWeapon.FighterGun]
#macro TrooperGunData		global.EnemyWeaponData[EnemyWeapon.TrooperGun]
#macro BeamerGunData		global.EnemyWeaponData[EnemyWeapon.BeamerGun]
#macro NinjaGunData			global.EnemyWeaponData[EnemyWeapon.NinjaGun]
#macro TurretGunData		global.EnemyWeaponData[EnemyWeapon.TurretGun]
#macro RocketGunData		global.EnemyWeaponData[EnemyWeapon.RocketGun]

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
ds_map_add(EnemyFighterGunData, "rateOfFireMin",				3);
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
ds_map_add(EnemyFighterGunData, "reloadTime",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "recoilPower",					0);
ds_map_add(EnemyFighterGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(EnemyFighterGunData, "hitscanScaleY",				0);
ds_map_add(EnemyFighterGunData, "projectileVelocityNoiseFactor",0);
ds_map_add(EnemyFighterGunData, "projectileVelocityCurrent",	3.5);
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

#region TrooperGun
TrooperGunData = ds_map_create();
ds_map_add(TrooperGunData, "weaponSprite",					noone);
ds_map_add(TrooperGunData, "offsetY",						6);
ds_map_add(TrooperGunData, "laserSightEnabled",				false);
ds_map_add(TrooperGunData, "isAuto",						true);
ds_map_add(TrooperGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "bulletObject",					obj_FighterProjectile);
ds_map_add(TrooperGunData, "bulletNumber",					5);
ds_map_add(TrooperGunData, "bulletSpawnPointOffset",		19);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "damage",						5);
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
ds_map_add(TrooperGunData, "reloadTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(TrooperGunData, "hitscanScaleY",					0);
ds_map_add(TrooperGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(TrooperGunData, "projectileVelocityCurrent",		3.5);
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

#region BeamerGun
BeamerGunData = ds_map_create();
ds_map_add(BeamerGunData, "weaponSprite",					noone);
ds_map_add(BeamerGunData, "offsetY",						6);
ds_map_add(BeamerGunData, "laserSightEnabled",				true);
ds_map_add(BeamerGunData, "isAuto",							true);
ds_map_add(BeamerGunData, "currentShootMode",				ShootMode.Cast);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "bulletObject",					obj_BeamerLaser);
ds_map_add(BeamerGunData, "bulletNumber",					1);
ds_map_add(BeamerGunData, "bulletSpawnPointOffset",			10);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "damage",							2);
ds_map_add(BeamerGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "rateOfFireAccelerated",			false);
ds_map_add(BeamerGunData, "rateOfFireIncrStep",				0);
ds_map_add(BeamerGunData, "rateOfFireDecrStep",				0);
ds_map_add(BeamerGunData, "rateOfFireMin",					20);
ds_map_add(BeamerGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "burstRate",						0);
ds_map_add(BeamerGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "castExecuteCount",				0);
ds_map_add(BeamerGunData, "castTime",						2);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "chargeExecuteCountMin",			1);
ds_map_add(BeamerGunData, "chargeExecuteCountMax",			0);
ds_map_add(BeamerGunData, "chargeTime",						1);
ds_map_add(BeamerGunData, "chargeWaitTime",					0);
ds_map_add(BeamerGunData, "chargeDamageFactorMax",			4);
ds_map_add(BeamerGunData, "chargeHealFactorMax",			0);
ds_map_add(BeamerGunData, "chargeRateFactorMax",			0);
ds_map_add(BeamerGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(BeamerGunData, "chargeVelocityFactorMax",		20);
ds_map_add(BeamerGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "spreadIsDynamic",				false);
ds_map_add(BeamerGunData, "spreadIsUniform",				false);
ds_map_add(BeamerGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(BeamerGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(BeamerGunData, "spreadAngleMin",					0);
ds_map_add(BeamerGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "ammoID",							noone);
ds_map_add(BeamerGunData, "shootAmmoCost",					0);
ds_map_add(BeamerGunData, "reloadTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "recoilPower",					0);
ds_map_add(BeamerGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "hitscanScaleY",					5);
ds_map_add(BeamerGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(BeamerGunData, "projectileVelocityCurrent",		5);
ds_map_add(BeamerGunData, "projectileVelocityMax",			0);
ds_map_add(BeamerGunData, "projectileAcceleration",			0);
ds_map_add(BeamerGunData, "projectileFriction",				0);
ds_map_add(BeamerGunData, "projectileBounceEnable",			false);
ds_map_add(BeamerGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(BeamerGunData, "isShackingCamera",				false);
ds_map_add(BeamerGunData, "angularShakeEnabled",			false);
ds_map_add(BeamerGunData, "shakeValue",						0.75);
ds_map_add(BeamerGunData, "shotShakeFactor",				0.05);
#endregion

#region NinjaGun
NinjaGunData = ds_map_create();
ds_map_add(NinjaGunData, "weaponSprite",					noone);
ds_map_add(NinjaGunData, "offsetY",							6);
ds_map_add(NinjaGunData, "laserSightEnabled",				false);
ds_map_add(NinjaGunData, "isAuto",							true);
ds_map_add(NinjaGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "bulletObject",					obj_FighterProjectile);
ds_map_add(NinjaGunData, "bulletNumber",					30);
ds_map_add(NinjaGunData, "bulletSpawnPointOffset",			0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "damage",							5);
ds_map_add(NinjaGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "rateOfFireAccelerated",			false);
ds_map_add(NinjaGunData, "rateOfFireIncrStep",				0);
ds_map_add(NinjaGunData, "rateOfFireDecrStep",				0);
ds_map_add(NinjaGunData, "rateOfFireMin",					2);
ds_map_add(NinjaGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "burstRate",						0);
ds_map_add(NinjaGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "castExecuteCount",				0);
ds_map_add(NinjaGunData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "chargeExecuteCountMin",			1);
ds_map_add(NinjaGunData, "chargeExecuteCountMax",			0);
ds_map_add(NinjaGunData, "chargeTime",						1);
ds_map_add(NinjaGunData, "chargeWaitTime",					0);
ds_map_add(NinjaGunData, "chargeDamageFactorMax",			4);
ds_map_add(NinjaGunData, "chargeHealFactorMax",				0);
ds_map_add(NinjaGunData, "chargeRateFactorMax",				0);
ds_map_add(NinjaGunData, "chargeBulletNumberFactorMax",		0);
ds_map_add(NinjaGunData, "chargeVelocityFactorMax",			20);
ds_map_add(NinjaGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "spreadIsDynamic",					false);
ds_map_add(NinjaGunData, "spreadIsUniform",					true);
ds_map_add(NinjaGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(NinjaGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(NinjaGunData, "spreadAngleMin",					360);
ds_map_add(NinjaGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "ammoID",							noone);
ds_map_add(NinjaGunData, "shootAmmoCost",					0);
ds_map_add(NinjaGunData, "reloadTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "recoilPower",						0);
ds_map_add(NinjaGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "hitscanScaleY",					0);
ds_map_add(NinjaGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(NinjaGunData, "projectileVelocityCurrent",		5);
ds_map_add(NinjaGunData, "projectileVelocityMax",			0);
ds_map_add(NinjaGunData, "projectileAcceleration",			0);
ds_map_add(NinjaGunData, "projectileFriction",				0.125);
ds_map_add(NinjaGunData, "projectileBounceEnable",			false);
ds_map_add(NinjaGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(NinjaGunData, "isShackingCamera",				false);
ds_map_add(NinjaGunData, "angularShakeEnabled",				false);
ds_map_add(NinjaGunData, "shakeValue",						0.75);
ds_map_add(NinjaGunData, "shotShakeFactor",					0.05);
#endregion

#region TurretGun
TurretGunData = ds_map_create();
ds_map_add(TurretGunData, "weaponSprite",					noone);
ds_map_add(TurretGunData, "offsetY",						16);
ds_map_add(TurretGunData, "laserSightEnabled",				false);
ds_map_add(TurretGunData, "isAuto",							true);
ds_map_add(TurretGunData, "currentShootMode",				ShootMode.Cast);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "bulletObject",					obj_BeamerLaser);
ds_map_add(TurretGunData, "bulletNumber",					4);
ds_map_add(TurretGunData, "bulletSpawnPointOffset",			0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "damage",							2);
ds_map_add(TurretGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "rateOfFireAccelerated",			false);
ds_map_add(TurretGunData, "rateOfFireIncrStep",				0);
ds_map_add(TurretGunData, "rateOfFireDecrStep",				0);
ds_map_add(TurretGunData, "rateOfFireMin",					25);
ds_map_add(TurretGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "burstRate",						0);
ds_map_add(TurretGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "castExecuteCount",				0);
ds_map_add(TurretGunData, "castTime",						1.25);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "chargeExecuteCountMin",			1);
ds_map_add(TurretGunData, "chargeExecuteCountMax",			0);
ds_map_add(TurretGunData, "chargeTime",						1);
ds_map_add(TurretGunData, "chargeWaitTime",					0);
ds_map_add(TurretGunData, "chargeDamageFactorMax",			4);
ds_map_add(TurretGunData, "chargeHealFactorMax",			0);
ds_map_add(TurretGunData, "chargeRateFactorMax",			0);
ds_map_add(TurretGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(TurretGunData, "chargeVelocityFactorMax",		20);
ds_map_add(TurretGunData, "chargeShakeFactorMax",			2);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "spreadIsDynamic",				false);
ds_map_add(TurretGunData, "spreadIsUniform",				true);
ds_map_add(TurretGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(TurretGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(TurretGunData, "spreadAngleMin",					360);
ds_map_add(TurretGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "ammoID",							noone);
ds_map_add(TurretGunData, "shootAmmoCost",					0);
ds_map_add(TurretGunData, "reloadTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "recoilPower",					0);
ds_map_add(TurretGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "hitscanScaleY",					5);
ds_map_add(TurretGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(TurretGunData, "projectileVelocityCurrent",		5);
ds_map_add(TurretGunData, "projectileVelocityMax",			0);
ds_map_add(TurretGunData, "projectileAcceleration",			0);
ds_map_add(TurretGunData, "projectileFriction",				0);
ds_map_add(TurretGunData, "projectileBounceEnable",			false);
ds_map_add(TurretGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(TurretGunData, "isShackingCamera",				false);
ds_map_add(TurretGunData, "angularShakeEnabled",			false);
ds_map_add(TurretGunData, "shakeValue",						0.75);
ds_map_add(TurretGunData, "shotShakeFactor",				0.05);
#endregion

#region RocketGun
RocketGunData = ds_map_create();
ds_map_add(RocketGunData, "weaponSprite",					noone);
ds_map_add(RocketGunData, "offsetY",						6);
ds_map_add(RocketGunData, "laserSightEnabled",				false);
ds_map_add(RocketGunData, "isAuto",							true);
ds_map_add(RocketGunData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "bulletObject",					obj_EnemyRocket);
ds_map_add(RocketGunData, "bulletNumber",					2);
ds_map_add(RocketGunData, "bulletSpawnPointOffset",			19);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "damage",							5);
ds_map_add(RocketGunData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "rateOfFireAccelerated",			false);
ds_map_add(RocketGunData, "rateOfFireIncrStep",				0);
ds_map_add(RocketGunData, "rateOfFireDecrStep",				0);
ds_map_add(RocketGunData, "rateOfFireMin",					1);
ds_map_add(RocketGunData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "burstRate",						0);
ds_map_add(RocketGunData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "castExecuteCount",				0);
ds_map_add(RocketGunData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "chargeExecuteCountMin",			1);
ds_map_add(RocketGunData, "chargeExecuteCountMax",			0);
ds_map_add(RocketGunData, "chargeTime",						1);
ds_map_add(RocketGunData, "chargeWaitTime",					0);
ds_map_add(RocketGunData, "chargeDamageFactorMax",			4);
ds_map_add(RocketGunData, "chargeHealFactorMax",			0);
ds_map_add(RocketGunData, "chargeRateFactorMax",			0);
ds_map_add(RocketGunData, "chargeBulletNumberFactorMax",	0);
ds_map_add(RocketGunData, "chargeVelocityFactorMax",		20);
ds_map_add(RocketGunData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "spreadIsDynamic",				false);
ds_map_add(RocketGunData, "spreadIsUniform",				true);
ds_map_add(RocketGunData, "spreadAngleIncrFactor",			0.2);
ds_map_add(RocketGunData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(RocketGunData, "spreadAngleMin",					90);
ds_map_add(RocketGunData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "ammoID",							noone);
ds_map_add(RocketGunData, "shootAmmoCost",					0);
ds_map_add(RocketGunData, "reloadTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "recoilPower",					0);
ds_map_add(RocketGunData, "recoilFactor",					0);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "hitscanScaleY",					0);
ds_map_add(RocketGunData, "projectileVelocityNoiseFactor",	0);
ds_map_add(RocketGunData, "projectileVelocityCurrent",		3);
ds_map_add(RocketGunData, "projectileVelocityMax",			3);
ds_map_add(RocketGunData, "projectileAcceleration",			0);
ds_map_add(RocketGunData, "projectileFriction",				0.05);
ds_map_add(RocketGunData, "projectileBounceEnable",			false);
ds_map_add(RocketGunData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(RocketGunData, "isShackingCamera",				false);
ds_map_add(RocketGunData, "angularShakeEnabled",			false);
ds_map_add(RocketGunData, "shakeValue",						0.75);
ds_map_add(RocketGunData, "shotShakeFactor",				0.05);
#endregion