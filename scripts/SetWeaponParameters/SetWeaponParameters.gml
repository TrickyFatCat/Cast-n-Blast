/// @param owner
/// @param weaponID
/// @param weaponData

var _owner = argument0;
var _weaponID = argument1;
var _weaponData = argument2;

var _weapon = _weaponData[_weaponID];

owner =					_owner;
weaponSprite =					_weapon[? "weaponSprite"];
offsetY =						_weapon[? "offsetY"];
laserSightEnabled =				_weapon[? "laserSightEnabled"];
isAuto =						_weapon[? "isAuto"];
currentShootMode =				_weapon[? "currentShootMode"];
//-----------------------------------------------------------------------------
bulletObject =					_weapon[? "bulletObject"];
bulletNumber =					_weapon[? "bulletNumber"];
bulletSpawnPointOffset =	   	_weapon[? "bulletSpawnPointOffset"];
//-----------------------------------------------------------------------------
damage =						_weapon[? "damage"];
heal =							_weapon[? "heal"];
//-----------------------------------------------------------------------------
rateOfFireAccelerated =			_weapon[? "rateOfFireAccelerated"];
rateOfFireIncrStep =			_weapon[? "rateOfFireIncrStep"];
rateOfFireDecrStep =			_weapon[? "rateOfFireDecrStep"];
rateOfFireCurrent =				_weapon[? "rateOfFireMin"];
rateOfFireMin =					_weapon[? "rateOfFireMin"];
rateOfFireMax =					_weapon[? "rateOfFireMax"];
//-----------------------------------------------------------------------------
burstRate =						_weapon[? "burstRate"];
burstShotsNumber =				_weapon[? "burstShotsNumber"];
//-----------------------------------------------------------------------------
castTime =						_weapon[? "castTime"];
castExecuteCount =				_weapon[? "castExecuteCount"];
//-----------------------------------------------------------------------------
chargeExecuteCountMin =			_weapon[? "chargeExecuteCountMin"];
chargeExecuteCount =			_weapon[? "chargeExecuteCountMin"];
chargeExecuteCountMax =			_weapon[? "chargeExecuteCountMax"];
chargeTime =					_weapon[? "chargeTime"];
chargeWaitTime =				_weapon[? "chargeWaitTime"];
chargeDamageFactorMax =			_weapon[? "chargeDamageFactorMax"];
chargeHealFactorMax =			_weapon[? "chargeHealFactorMax"];
chargeRateFactorMax =			_weapon[? "chargeRateFactorMax"];
chargeBulletNumberFactorMax =	_weapon[? "chargeBulletNumberFactorMax"];
chargeVelocityFactorMax =		_weapon[? "chargeVelocityFactorMax"];
chargeShakeFactorMax =			_weapon[? "chargeShakeFactorMax"];
//-----------------------------------------------------------------------------
spreadIsDynamic =				_weapon[? "spreadIsDynamic"];
spreadIsUniform =				_weapon[? "spreadIsUniform"];
spreadAngleIncrFactor =			_weapon[? "spreadAngleIncrFactor"];
spreadAngleDecrFactor =			_weapon[? "spreadAngleDecrFactor"];
spreadAngleCurrent =			_weapon[? "spreadAngleMin"];
spreadAngleMin =				_weapon[? "spreadAngleMin"];
spreadAngleMax =				_weapon[? "spreadAngleMax"];
//-----------------------------------------------------------------------------
ammoID =						_weapon[? "ammoID"];
shootAmmoCost =					_weapon[? "shootAmmoCost"];
//-----------------------------------------------------------------------------
recoilPower =					_weapon[? "recoilPower"];
recoilFactor =					_weapon[? "recoilFactor"];
//-----------------------------------------------------------------------------
hitscanScaleY =					_weapon[? "hitscanScaleY"];
projectileVelocityNoiseFactor =	_weapon[? "projectileVelocityNoiseFactor"]
projectileVelocityCurrent =		_weapon[? "projectileVelocityCurrent"]
projectileVelocityMax =			_weapon[? "projectileVelocityMax"];
projectileAcceleration =		_weapon[? "projectileAcceleration"];
projectileFriction =			_weapon[? "projectileFriction"];
projectileBounceEnable =		_weapon[? "projectileBounceEnable"];
projectileBounceFriction =		_weapon[? "projectileBounceFriction"];
//-----------------------------------------------------------------------------
isShackingCamera =				_weapon[? "isShackingCamera"];
angularShakeEnabled =			_weapon[? "angularShakeEnabled"];
shakeValue =					_weapon[? "shakeValue"];
shotShakeFactor =				_weapon[? "shotShakeFactor"];

// Check is Auto and shoot mode
if ((currentShootMode == ShootMode.Cast || currentShootMode == ShootMode.Charge) && (!isAuto))
{
	isAuto = true;
}

// Normalise velocity parameters
velocityNoiseFactor = clamp(velocityNoiseFactor, 0, 1);

// Normalise cast parameters
castExecuteCount = round(castExecuteCount);

// Normalise charge parameters
if (chargeVelocityFactorMax < 1)
{
	chargeVelocityFactorMax = 1;
}

chargeExecuteCountMin = round(chargeExecuteCountMin);
chargeExecuteCountMax = round(chargeExecuteCountMax);

if (chargeExecuteCountMin > 0)
{
	chargeExecuteCount = chargeExecuteCountMin;
}
else
{
	chargeExecuteCount = 0;
}

if (chargeBulletNumberFactorMax < 1)
{
	chargeBulletNumberFactorMax = 1;
}

// Spawn bullet objects
bulletObjectParent = GetBulletRootParent();

var _bullets = round(bulletNumber * chargeBulletNumberFactorMax);

switch (bulletObjectParent)
{
	case obj_Projectile:
		hitscanObjects = noone;
		laserObjects = noone;
	break;
	
	case obj_Hitscan:
		var _listSize = ds_list_size(hitscanObjects);
		
		if (_listSize != _bullets)
		{
			ds_list_clear(hitscanObjects);
			CreateBulletObjects(hitscanObjects);
		}		
	break;
		
	case obj_Laser:
		var _listSize = ds_list_size(laserObjects);
		
		if (_listSize != _bullets)
		{
			ds_list_clear(laserObjects);
			CreateBulletObjects(laserObjects);
		}	
	break;
}

// Set sprite index for dissolve
sprite_index = weaponSprite;