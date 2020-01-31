/// @param uniformIndex

var _index = argument0;

var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);
var _uniformSpreadStep = spreadAngleCurrent / _bulletNumber;

if (spreadIsUniform)
{
	if (_bulletNumber mod 2) == 0
	{
		bulletSpawnDirection = directionCurrent + _uniformSpreadStep * _index - _uniformSpreadStep * 0.5;
	}
	else
	{
		bulletSpawnDirection = directionCurrent + _uniformSpreadStep * _index;
	}
}
else
{
	var _directionNoise = random_range(-spread, spread);
	bulletSpawnDirection = directionCurrent + _directionNoise;
}