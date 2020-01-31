/// @description SwitchLaserDamage

var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

if (isShooting) && (checkShootPause)
{
	for (var i = 0; i < _bulletNumber; i++)
	{
		var _bullet = laserObjects[| i];
		
		if (_bullet.currentState == LaserState.Active)
		{
			var _damage = damage * chargeDamageFactor;
			var _heal = heal * chargeHealFactor;
			
			with (_bullet)
			{
				dealingDamage = true;
				damage = _damage;
				heal = _heal;
			}
		
			if (i == _bulletNumber - 1) // It must be here in order to avoid bug with calculations while pressing shoot button rapidly
			{
				ExecuteAdditionalMechanics;
			}
		}
	}
}
else
{
	for (var i = 0; i < _bulletNumber; i++)
	{
		var _bullet = laserObjects[| i];
		
		_bullet.dealingDamage = false;
	}
}