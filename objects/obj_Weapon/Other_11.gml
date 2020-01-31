/// @description SpawnProjectile

// Parameters
var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

// Spawn projectiles
for (var i = 0; i < _bulletNumber; i++)
{
	var _index = round(_bulletNumber / 2) - i;
	CalculateBulletDirection(_index);
	var _bullet = SpawnBullet();
	_bullet.directionCurrent = bulletSpawnDirection;
	SetProjectileParameters(_bullet);
}