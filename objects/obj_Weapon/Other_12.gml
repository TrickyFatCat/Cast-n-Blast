/// @description EnableHitscan

var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

// Sequence
for (var i = 0; i < _bulletNumber; i++)
{
	var _index = round(_bulletNumber / 2) - i;
	CalculateBulletDirection(_index);
	
	var _bullet = hitscanObjects[| i];
	
	var _directon = bulletSpawnDirection;
	var _damage = damage * chargeDamageFactor;
	var _heal = heal * chargeHealFactor;
	
	with (_bullet)
	{
		directionCurrent = _directon;
		drawAngle = directionCurrent;
		damage = _damage;
		heal = _heal;
		currentState = HitscanState.Active;
	}
}