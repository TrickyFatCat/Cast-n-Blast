/// @description SetLaserState

var _bulletNumber = floor(bulletNumber * chargeBulletNumberFactor);

if (isShooting)
{
	for (var i = 0; i < _bulletNumber; i++)
	{
		var _bullet = laserObjects[| i];
		
		if (_bullet.currentState == LaserState.Idle || _bullet.currentState == LaserState.Start)
		{
			_bullet.currentState = LaserState.Start;
		}
	}
}
else
{
	for (var i = 0; i < _bulletNumber; i++)
	{
		var _bullet = laserObjects[| i];
		
		if (_bullet.currentState == LaserState.Start || _bullet.currentState == LaserState.Active)
		{
			_bullet.currentState = LaserState.Finish;
		}
	}
}