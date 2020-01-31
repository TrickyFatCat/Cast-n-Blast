/// @param bulletsArray

var _bulletsList = argument0;

for (var i = 0; i < bulletNumber; i++)
{
	var _bullet = SpawnBullet();
	ds_list_add(_bulletsList, _bullet);
	with (_bullet)
	{
		collisionTargets = other.collisionTargets;
		drawScaleYMax = other.hitscanScaleY;
		x = other.bulletSpawnPointX;
		y = other.bulletSpawnPointY;
	}
}