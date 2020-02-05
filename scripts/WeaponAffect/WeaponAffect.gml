var _hitPointsFactor = weaponHitPoints / weaponMaxHitPoints;

if (weaponLevel = 0)
{
	weaponFactor = max(defaultWeaponFactor * _hitPointsFactor, 0.85);
}
else
{
	var _rawFactor = defaultWeaponFactor - 1;
	weaponFactor = 1 + _rawFactor * _hitPointsFactor;
}

var _factor = weaponFactor;

with (activeWeapon)
{
	//damage = round(damage * _factor);
	rateOfFireCurrent = other.defaultRateOfFire * _factor;
}

with (secondaryWeapon)
{
	//damage = round(damage * _factor);
	rateOfFireCurrent = other.secondaryDefaultRateOfFire * _factor;
	spreadAngleCurrent = other.secondaryDefaultSpreadAlgle - (other.secondaryDefaultSpreadAlgle * (_factor - 1));
}