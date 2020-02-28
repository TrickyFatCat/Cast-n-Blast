/// @description AmmoAutoRecovery

var _timer = 0;
var _time;
var _ammo;
var _maxAmmo;

if (GameIsPaused())
{
	return;
}

for (var i = 0; i < ammoArrayLength; i++)
{
	_time = SetTime(1 / GetRecoveryRate(i));
	_ammo = GetCurrentAmmo(i);
	_maxAmmo = GetMaxAmmo(i);
	
	if (_ammo < _maxAmmo)
	{
		_timer = GetRecoveryTimer(i);
		var _timeIsOver = CheckTimer(_timer, _time);
		
		if (i == mainWeapon.ammoID && !mainWeapon.isShooting)
		{
			var _delayIsOver = CheckTimer(recoveryDelayTimer, recoveryDelayTime);
				
			if (!_delayIsOver)
			{
				recoveryDelayTimer += global.TimeFactor;
			}
		}
		
		if (_timeIsOver)
		{
			SetRecoveryTimer(i, 0);
			
			if (i == mainWeapon.ammoID)
			{
				if (!mainWeapon.isShooting)
				{
					if (_delayIsOver)
					{
						ammo = RecoverAmmo(i);
					}
				}
				else
				{
					recoveryDelayTimer = 0;
				}
			}
			else
			{
				RecoverAmmo(i);
			}
			
			show_debug_message(recoveryDelayTimer);
		}
		else
		{
			_timer += global.TimeFactor;
			SetRecoveryTimer(i, _timer);
		}
	}
}