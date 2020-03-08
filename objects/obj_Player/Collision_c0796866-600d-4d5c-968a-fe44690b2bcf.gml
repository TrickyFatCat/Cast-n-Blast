with (other)
{
	if (tileType == TileType.DamageDealer)
	{
		actionDelayTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(actionDelayTimer, actionDelayTime)

		if (!_timeIsOver)
		{
			isActive = false;
		}
		else
		{
			isActive = true;
			actionDelayTimer = 0;
		}
	}
	else
	{
		isActive = true;
	}
}

if (other.currentState = TileState.Active)
{
	switch (other.tileType)
	{
		case TileType.DamageDealer:
			if (!isInvulnerable && other.isActive)
			{
				DealDamageToPlayer(other.damage);
				CheckPlayerHP;
			}
			
			var _colour = c_yellow;
		break;
	
		case TileType.SpeedDebuffer:
			if (currentState != PlayerState.Dash)
			{
				velocity *= other.speedFactor;
				EnableFlash(c_aqua, 0.5);
			}
			
			var _colour = c_aqua;
		break;
	}
	
	if (!isInvulnerable)
	{
		var _direction = random(360);
		var _x = x + random_range(-8, 8)
		var _y = y + random_range(0, 4);
		var _dust = SpawnDust(vfx_Dust, _x, _y, _colour, false, 0);
		
		with (_dust)
		{
			drawScaleX = random_range(0.45, 0.55);
			drawScaleY = drawScaleX;
			velocityZ = random_range(2, 4);
		}
	}
}