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
				mainWeapon.directionCurrent = CalculateDirectionToPlayer();
				for (var i = 0; i < 3; i++)
				{
					secondaryWeapon[i].directionCurrent = mainWeapon.directionCurrent + 90 * (i + 1);
				}
				isShooting = true;
			}
		}
	break;
	
	case CastState.Process:
		with (mainWeapon)
		{
			lasersightAlpha = LerpTimeFactor(0, 1, castProgress);
		}
		
		for (var i = 0; i < 3; i++)
		{
			secondaryWeapon[i].lasersightAlpha = mainWeapon.lasersightAlpha;
		}
	break;
	
	case CastState.Execute:
		mainWeapon.lasersightAlpha = 0;
		
		if (obj_Player.currentState == PlayerState.Dash && !rotationIsLocked)
		{
			rotationIsLocked = true;
		}
		
		if (!rotationIsLocked)
		{
			mainWeapon.directionCurrent += rotationSpeed * rotationDirection * global.TimeFactor;
			for (var i = 0; i < 3; i ++)
			{
				secondaryWeapon[i].directionCurrent = mainWeapon.directionCurrent + 90 * (i + 1);
				secondaryWeapon[i].lasersightAlpha = 0;
			}
		}
		else
		{
			rotationLockTimer += global.TimeFactor;
			var _timeIsOver = CheckTimer(rotationLockTimer, rotationLockTime);
			
			if (_timeIsOver)
			{
				rotationIsLocked = false;
				rotationLockTimer = 0;
			}
		}
	break;
}