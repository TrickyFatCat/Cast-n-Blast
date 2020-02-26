// Parameters
enum PlayerWeapon
{
	FireBall,
	Icicles,
	Meteor,
	ArcaneSpear,
	UltimateGun
}

global.ActiveWeapons = [];
global.ActiveWeapons[0] = PlayerWeapon.FireBall;
global.ActiveWeapons[1] = PlayerWeapon.Icicles;
global.ActiveWeapons[2] = PlayerWeapon.Meteor;
global.ActiveWeapons[3] = PlayerWeapon.ArcaneSpear;

#macro FireBallData global.PlayerWeaponData[PlayerWeapon.FireBall]
#macro IciclesData global.PlayerWeaponData[PlayerWeapon.Icicles]
#macro MeteorData global.PlayerWeaponData[PlayerWeapon.Meteor]
#macro ArcaneSpearData global.PlayerWeaponData[PlayerWeapon.ArcaneSpear]
#macro UltimateGunData global.PlayerWeaponData[PlayerWeapon.UltimateGun]

#region // Fireball
FireBallData = ds_map_create();
ds_map_add(FireBallData, "name",							"Fire ball");
ds_map_add(FireBallData, "weaponSprite",					spr_playerWeapon);
ds_map_add(FireBallData, "offsetY",							4);
ds_map_add(FireBallData, "laserSightEnabled",				false);
ds_map_add(FireBallData, "isAuto",							true);
ds_map_add(FireBallData, "currentShootMode",				ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "bulletObject",					obj_PlayerFireBall);
ds_map_add(FireBallData, "bulletNumber",					1);
ds_map_add(FireBallData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "damage",							10);
ds_map_add(FireBallData, "heal",							0);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "rateOfFireAccelerated",			false);
ds_map_add(FireBallData, "rateOfFireIncrStep",				0);
ds_map_add(FireBallData, "rateOfFireDecrStep",				0);
ds_map_add(FireBallData, "rateOfFireMin",					6);
ds_map_add(FireBallData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "burstRate",						0);
ds_map_add(FireBallData, "burstShotsNumber",				0);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "castExecuteCount",				0);
ds_map_add(FireBallData, "castTime",						0);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "chargeExecuteCountMin",			1);
ds_map_add(FireBallData, "chargeExecuteCountMax",			0);
ds_map_add(FireBallData, "chargeTime",						1);
ds_map_add(FireBallData, "chargeWaitTime",					0);
ds_map_add(FireBallData, "chargeCostFactorMax",				1);
ds_map_add(FireBallData, "chargeDamageFactorMax",			4);
ds_map_add(FireBallData, "chargeHealFactorMax",				0);
ds_map_add(FireBallData, "chargeRateFactorMax",				0);
ds_map_add(FireBallData, "chargeBulletNumberFactorMax",		0);
ds_map_add(FireBallData, "chargeVelocityFactorMax",			20);
ds_map_add(FireBallData, "chargeShakeFactorMax",			1.25);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "spreadIsDynamic",					false);
ds_map_add(FireBallData, "spreadIsUniform",					false);
ds_map_add(FireBallData, "spreadAngleIncrFactor",			0.2);
ds_map_add(FireBallData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(FireBallData, "spreadAngleMin",					15);
ds_map_add(FireBallData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "ammoID",							PlayerAmmo.FireBall);
ds_map_add(FireBallData, "shootAmmoCost",					1);
ds_map_add(FireBallData, "reloadTime",						1.5);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "recoilPower",						10);
ds_map_add(FireBallData, "recoilFactor",					0.3);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "hitscanScaleY",					0);
ds_map_add(FireBallData, "projectileVelocityNoiseFactor",	0);
ds_map_add(FireBallData, "projectileVelocityCurrent",		14);
ds_map_add(FireBallData, "projectileVelocityMax",			0);
ds_map_add(FireBallData, "projectileAcceleration",			0);
ds_map_add(FireBallData, "projectileFriction",				0);
ds_map_add(FireBallData, "projectileBounceEnable",			false);
ds_map_add(FireBallData, "projectileBounceFriction",		2);
//-----------------------------------------------------------------------------
ds_map_add(FireBallData, "isShackingCamera",				true);
ds_map_add(FireBallData, "angularShakeEnabled",				false);
ds_map_add(FireBallData, "shakeValue",						0.7);
ds_map_add(FireBallData, "shotShakeFactor",					0.05);
//-----------------------------------------------------------------------------

#endregion

#region // Icicles
IciclesData = ds_map_create();
ds_map_add(IciclesData, "name",								"Icicles");
ds_map_add(IciclesData, "weaponSprite",						spr_playerWeapon);
ds_map_add(IciclesData, "offsetY",							4);
ds_map_add(IciclesData, "laserSightEnabled",				false);
ds_map_add(IciclesData, "isAuto",							true);
ds_map_add(IciclesData, "currentShootMode",					ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "bulletObject",						obj_PlayerIcicle);
ds_map_add(IciclesData, "bulletNumber",						10);
ds_map_add(IciclesData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "damage",							8);
ds_map_add(IciclesData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "rateOfFireAccelerated",			false);
ds_map_add(IciclesData, "rateOfFireIncrStep",				0);
ds_map_add(IciclesData, "rateOfFireDecrStep",				0);
ds_map_add(IciclesData, "rateOfFireMin",					2);
ds_map_add(IciclesData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "burstRate",						0);
ds_map_add(IciclesData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "castExecuteCount",					0);
ds_map_add(IciclesData, "castTime",							0);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "chargeExecuteCountMin",			1);
ds_map_add(IciclesData, "chargeExecuteCountMax",			0);
ds_map_add(IciclesData, "chargeTime",						1);
ds_map_add(IciclesData, "chargeWaitTime",					0);
ds_map_add(IciclesData, "chargeCostFactorMax",				1);
ds_map_add(IciclesData, "chargeDamageFactorMax",			4);
ds_map_add(IciclesData, "chargeHealFactorMax",				0);
ds_map_add(IciclesData, "chargeRateFactorMax",				0);
ds_map_add(IciclesData, "chargeBulletNumberFactorMax",		0);
ds_map_add(IciclesData, "chargeVelocityFactorMax",			20);
ds_map_add(IciclesData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "spreadIsDynamic",					false);
ds_map_add(IciclesData, "spreadIsUniform",					false);
ds_map_add(IciclesData, "spreadAngleIncrFactor",			0.2);
ds_map_add(IciclesData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(IciclesData, "spreadAngleMin",					30);
ds_map_add(IciclesData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "ammoID",							PlayerAmmo.Icicles);
ds_map_add(IciclesData, "shootAmmoCost",					1);
ds_map_add(IciclesData, "reloadTime",						2.5);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "recoilPower",						10);
ds_map_add(IciclesData, "recoilFactor",						0.3);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "hitscanScaleY",					0);
ds_map_add(IciclesData, "projectileVelocityNoiseFactor",	0.1);
ds_map_add(IciclesData, "projectileVelocityCurrent",		10);
ds_map_add(IciclesData, "projectileVelocityMax",			0);
ds_map_add(IciclesData, "projectileAcceleration",			0);
ds_map_add(IciclesData, "projectileFriction",				0.25);
ds_map_add(IciclesData, "projectileBounceEnable",			true);
ds_map_add(IciclesData, "projectileBounceFriction",			1);
//-----------------------------------------------------------------------------
ds_map_add(IciclesData, "isShackingCamera",					true);
ds_map_add(IciclesData, "angularShakeEnabled",				true);
ds_map_add(IciclesData, "shakeValue",						1.1);
ds_map_add(IciclesData, "shotShakeFactor",					1);
#endregion

#region // Meteor
MeteorData = ds_map_create();
ds_map_add(MeteorData, "name",								"Meteor");
ds_map_add(MeteorData, "weaponSprite",						spr_playerWeapon);
ds_map_add(MeteorData, "offsetY",							4);
ds_map_add(MeteorData, "laserSightEnabled",					false);
ds_map_add(MeteorData, "isAuto",							false);
ds_map_add(MeteorData, "currentShootMode",					ShootMode.Normal);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "bulletObject",						obj_PlayerMeteor);
ds_map_add(MeteorData, "bulletNumber",						1);
ds_map_add(MeteorData, "bulletSpawnPointOffset",			32);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "damage",							110);
ds_map_add(MeteorData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "rateOfFireAccelerated",				false);
ds_map_add(MeteorData, "rateOfFireIncrStep",				0);
ds_map_add(MeteorData, "rateOfFireDecrStep",				0);
ds_map_add(MeteorData, "rateOfFireMin",						2);
ds_map_add(MeteorData, "rateOfFireMax",						0);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "burstRate",							0);
ds_map_add(MeteorData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "castExecuteCount",					1);
ds_map_add(MeteorData, "castTime",							1);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "chargeExecuteCountMin",				1);
ds_map_add(MeteorData, "chargeExecuteCountMax",				0);
ds_map_add(MeteorData, "chargeTime",						1);
ds_map_add(MeteorData, "chargeWaitTime",					0);
ds_map_add(MeteorData, "chargeCostFactorMax",				1);
ds_map_add(MeteorData, "chargeDamageFactorMax",				4);
ds_map_add(MeteorData, "chargeHealFactorMax",				0);
ds_map_add(MeteorData, "chargeRateFactorMax",				0);
ds_map_add(MeteorData, "chargeBulletNumberFactorMax",		3);
ds_map_add(MeteorData, "chargeVelocityFactorMax",			0);
ds_map_add(MeteorData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "spreadIsDynamic",					false);
ds_map_add(MeteorData, "spreadIsUniform",					false);
ds_map_add(MeteorData, "spreadAngleIncrFactor",				0.2);
ds_map_add(MeteorData, "spreadAngleDecrFactor",				0.0075);
ds_map_add(MeteorData, "spreadAngleMin",					0);
ds_map_add(MeteorData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "ammoID",							PlayerAmmo.Meteor);
ds_map_add(MeteorData, "shootAmmoCost",						1);
ds_map_add(MeteorData, "reloadTime",						2.5);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "recoilPower",						10);
ds_map_add(MeteorData, "recoilFactor",						0.3);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "hitscanScaleY",						0);
ds_map_add(MeteorData, "projectileVelocityNoiseFactor",		0);
ds_map_add(MeteorData, "projectileVelocityCurrent",			0);
ds_map_add(MeteorData, "projectileVelocityMax",				8);
ds_map_add(MeteorData, "projectileAcceleration",			0.1);
ds_map_add(MeteorData, "projectileFriction",				0);
ds_map_add(MeteorData, "projectileBounceEnable",			false);
ds_map_add(MeteorData, "projectileBounceFriction",			1);
//-----------------------------------------------------------------------------
ds_map_add(MeteorData, "isShackingCamera",					true);
ds_map_add(MeteorData, "angularShakeEnabled",				true);
ds_map_add(MeteorData, "shakeValue",						1.1);
ds_map_add(MeteorData, "shotShakeFactor",					1);
#endregion

#region // ArcaneSpear
ArcaneSpearData = ds_map_create();
ds_map_add(ArcaneSpearData, "name",								"Arcane srear");
ds_map_add(ArcaneSpearData, "weaponSprite",						spr_playerWeapon);
ds_map_add(ArcaneSpearData, "offsetY",							4);
ds_map_add(ArcaneSpearData, "laserSightEnabled",				false);
ds_map_add(ArcaneSpearData, "isAuto",							false);
ds_map_add(ArcaneSpearData, "currentShootMode",					ShootMode.Charge);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "bulletObject",						obj_ArcaneSpear);
ds_map_add(ArcaneSpearData, "bulletNumber",						1);
ds_map_add(ArcaneSpearData, "bulletSpawnPointOffset",			18);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "damage",							1);
ds_map_add(ArcaneSpearData, "heal",								0);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "rateOfFireAccelerated",			false);
ds_map_add(ArcaneSpearData, "rateOfFireIncrStep",				0);
ds_map_add(ArcaneSpearData, "rateOfFireDecrStep",				0);
ds_map_add(ArcaneSpearData, "rateOfFireMin",					2);
ds_map_add(ArcaneSpearData, "rateOfFireMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "burstRate",						0);
ds_map_add(ArcaneSpearData, "burstShotsNumber",					0);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "castExecuteCount",					1);
ds_map_add(ArcaneSpearData, "castTime",							1);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "chargeExecuteCountMin",			1);
ds_map_add(ArcaneSpearData, "chargeExecuteCountMax",			0);
ds_map_add(ArcaneSpearData, "chargeTime",						1);
ds_map_add(ArcaneSpearData, "chargeWaitTime",					1);
ds_map_add(ArcaneSpearData, "chargeCostFactorMax",				50);
ds_map_add(ArcaneSpearData, "chargeDamageFactorMax",			200);
ds_map_add(ArcaneSpearData, "chargeHealFactorMax",				0);
ds_map_add(ArcaneSpearData, "chargeRateFactorMax",				0);
ds_map_add(ArcaneSpearData, "chargeBulletNumberFactorMax",		1);
ds_map_add(ArcaneSpearData, "chargeVelocityFactorMax",			0);
ds_map_add(ArcaneSpearData, "chargeShakeFactorMax",				1.25);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "spreadIsDynamic",					false);
ds_map_add(ArcaneSpearData, "spreadIsUniform",					false);
ds_map_add(ArcaneSpearData, "spreadAngleIncrFactor",			0.2);
ds_map_add(ArcaneSpearData, "spreadAngleDecrFactor",			0.0075);
ds_map_add(ArcaneSpearData, "spreadAngleMin",					0);
ds_map_add(ArcaneSpearData, "spreadAngleMax",					0);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "ammoID",							PlayerAmmo.ArcaneSpear);
ds_map_add(ArcaneSpearData, "shootAmmoCost",					1);
ds_map_add(ArcaneSpearData, "reloadTime",						2.5);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "recoilPower",						10);
ds_map_add(ArcaneSpearData, "recoilFactor",						0.3);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "hitscanScaleY",					3);
ds_map_add(ArcaneSpearData, "projectileVelocityNoiseFactor",	0);
ds_map_add(ArcaneSpearData, "projectileVelocityCurrent",		20);
ds_map_add(ArcaneSpearData, "projectileVelocityMax",			0);
ds_map_add(ArcaneSpearData, "projectileAcceleration",			0);
ds_map_add(ArcaneSpearData, "projectileFriction",				0);
ds_map_add(ArcaneSpearData, "projectileBounceEnable",			false);
ds_map_add(ArcaneSpearData, "projectileBounceFriction",			1);
//-----------------------------------------------------------------------------
ds_map_add(ArcaneSpearData, "isShackingCamera",					true);
ds_map_add(ArcaneSpearData, "angularShakeEnabled",				true);
ds_map_add(ArcaneSpearData, "shakeValue",						1.1);
ds_map_add(ArcaneSpearData, "shotShakeFactor",					1);
#endregion

#region // Ultimate
UltimateGunData = ds_map_create();
ds_map_add(UltimateGunData, "name",								"Ultimate");
ds_map_add(UltimateGunData, "weaponSprite",						noone);
ds_map_add(UltimateGunData, "offsetY",							4);
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
ds_map_add(UltimateGunData, "chargeCostFactorMax",				1);
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