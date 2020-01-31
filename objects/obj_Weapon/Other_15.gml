/// @description CalculateLaserSpread

var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

for (var i = 0; i < _bulletNumber; i++)
{
	var _index = round(_bulletNumber / 2) - i;
	CalculateBulletDirection(_index);
	
	var _bullet = laserObjects[| i];
	
	with (_bullet)
	{
		x = other.bulletSpawnPointX;
		y = other.bulletSpawnPointY;
		directionCurrent = other.bulletSpawnDirection;
	}
}