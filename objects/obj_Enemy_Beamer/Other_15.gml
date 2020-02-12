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
			}
		}
		
		//targetingTimer += global.TimeFactor;
		//var _timeIsOver = CheckTimer(targetingTimer, targetingTime);
		
		//if (_timeIsOver)
		//{
		//	targetingTimer = 0;
		//	isShooting = true;
		//}
		//activeWeapon.lasersightAlpha = 0;
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
		var _deltaDirection = CalculateDeltaDirection(global.Player, activeWeapon.directionCurrent, rotationSpeed);
		activeWeapon.directionCurrent -= _deltaDirection;
		
		var _timeIsOver = CheckTimer(shootTimer, shootTime);
		if (_timeIsOver)
		{
			shootTimer = 0;
			isShooting = false;
			currentState = EnemyState.TargetSearch;
		}
	break;
}