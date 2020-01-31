/// @param bulletsArray

var _bulletsList = argument0;

for (var i = 0; i < bulletNumber; i++)
{
	var _bullet = _bulletsList[| i];
	
	with (_bullet)
	{
		x = other.bulletSpawnPointX;
		y = other.bulletSpawnPointY;
		directionCurrent = other.directionCurrent;
	}
}