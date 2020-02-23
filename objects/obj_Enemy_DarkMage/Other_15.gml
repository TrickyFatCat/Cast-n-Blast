// Inherit the parent event
event_inherited();

if (obj_Player.currentState == PlayerState.Dash && !aimIsLocked)
{
	aimIsLocked = true;
}
		
if (!aimIsLocked)
{
	var _deltaDirection = CalculateDeltaDirection(global.Player, mainWeapon.directionCurrent, rotationSpeed);
	mainWeapon.directionCurrent -= _deltaDirection;
}
else
{
	aimLockTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(aimLockTimer, aimLockTime);
			
	if (_timeIsOver)
	{
		aimIsLocked = false;
		aimLockTimer = 0;
	}
}

switch (mainWeapon.currentCastState)
{
	case CastState.Idle:
		var _counter = 0;
		var _listSize = ds_list_size(mainWeapon.laserObjects);
		for (var i = 0; i < _listSize; i++)
		{
			var _laser = mainWeapon.laserObjects[| i];
				
			if (_laser.currentState == LaserState.Idle)
			{
				_counter++
			}
				
			if (_counter == _listSize)
			{
				mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
				isShooting = true;
			}
		}
	break;
	
	case CastState.Process:
		with (mainWeapon)
		{
			lasersightAlpha = LerpTimeFactor(0, 1, castProgress);
		}
	break;
	
	case CastState.Execute:
		mainWeapon.lasersightAlpha = 0;
		shootTimer += global.TimeFactor;
		
		var _timeIsOver = CheckTimer(shootTimer, shootTime);
		if (_timeIsOver)
		{
			shootTimer = 0;
			isShooting = false;
			currentState = EnemyState.TargetSearch;
		}
	break;
}