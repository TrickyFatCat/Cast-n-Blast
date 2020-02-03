var _hitPointsFactor = weaponHitPoints / weaponMaxHitPoints;

if (weaponLevel = 0)
{
	weaponFactor = max(defaultWeaponFactor * _hitPointsFactor, 0.9);
}
else
{
	var _rawFactor = defaultWeaponFactor - 1;
	weaponFactor = 1 + _rawFactor * _hitPointsFactor;
}

var _factor = weaponFactor;

with (activeWeapon)
{
	damage = round(damage * _factor);
	rateOfFireCurrent = other.defaultRateOfFire * _factor;
	spreadAngleCurrent = other.defaultSpreadAngle - (other.defaultSpreadAngle * (_factor - 1));
	
	if (_factor == 0.75)
	{
		shootAmmoCost = 2;
	}
	else
	{
		shootAmmoCost = 1;
	}
}