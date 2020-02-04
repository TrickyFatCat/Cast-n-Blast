/// @description Insert description here

// Inherit the parent event
event_inherited();

switch (activeWeapon.currentCastState)
{
	case CastState.Idle:
		var _counter = 0;
		var _listSize = ds_list_size(activeWeapon.laserObjects);
		for (var i = 0; i < _listSize; i++)
		{
			var _laser = activeWeapon.laserObjects[| i];
				
			if (_laser.currentState == LaserState.Idle)
			{
				_counter++
			}
				
			if (_counter == _listSize)
			{
				activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
				isShooting = true;
				rotationDirection = choose(-1, 1);
			}
		}
		shootTimer = 0;
		activeWeapon.lasersightAlpha = 0;
	break;
	
	case CastState.Process:
		with (activeWeapon)
		{
			lasersightAlpha = LerpTimeFactor(0, 1, castProgress);
		}
	break;
	
	case CastState.Execute:
		activeWeapon.lasersightAlpha = 0;
		shootTimer += global.TimeFactor;
		activeWeapon.directionCurrent += rotationSpeed * rotationDirection * global.TimeFactor;
		
		var _timeIsOver = CheckTimer(shootTimer, shootTime);
		if (_timeIsOver)
		{
			isShooting = false;
			currentState = EnemyState.TargetSearch;
		}
	break;
}