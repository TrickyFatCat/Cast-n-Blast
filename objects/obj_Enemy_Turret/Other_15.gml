/// @description Insert description here

// Inherit the parent event
event_inherited();

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
		mainWeapon.directionCurrent += rotationSpeed * rotationDirection * global.TimeFactor;
		//shootTimer += global.TimeFactor;
		//var _deltaDirection = CalculateDeltaDirection(global.Player, mainWeapon.directionCurrent, rotationSpeed);
		//mainWeapon.directionCurrent -= _deltaDirection;
		
		//var _timeIsOver = CheckTimer(shootTimer, shootTime);
		//if (_timeIsOver)
		//{
		//	shootTimer = 0;
		//	isShooting = false;
		//	currentState = EnemyState.TargetSearch;
		//}
	break;
}