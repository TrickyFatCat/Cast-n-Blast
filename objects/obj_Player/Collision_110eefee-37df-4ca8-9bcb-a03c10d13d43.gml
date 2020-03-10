with (other)
{
	if (isActive)
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
			EnableFlash(c_yellow, 0.25);
		}
	}
}

if (!isInvulnerable && other.isActive)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

if (!isInvulnerable)
{
	var _direction = random(360);
	var _x = x + random_range(-8, 8)
	var _y = y + random_range(0, 4);
	var _dust = SpawnDust(vfx_Dust, _x, _y, c_yellow, false, 0);
		
	with (_dust)
	{
		drawScaleX = random_range(0.45, 0.55);
		drawScaleY = drawScaleX;
		velocityZ = random_range(2, 4);
	}
}