switch (currentActionState)
{
	case NinjaState.Idle:
		isInvulnerable = true;
		drawColour = c_fuchsia;
		currentState = EnemyState.TargetSearch;
		currentActionState = NinjaState.TeleportOut;
		teleportScaleX = drawScaleX;
	break;
	
	case NinjaState.TeleportOut:
		var _scaleStepFactor = CalculateStep(teleportOutTime);
		var _scaleStep = teleportScaleY * _scaleStepFactor;

		// Sequence
		if (drawScaleY < teleportScaleY)
		{
			drawScaleY = ApproachTimeFactor(drawScaleY, teleportScaleY, _scaleStep);
			drawScaleX = drawScaleY * teleportScaleX;
		}
		else
		{
			drawAlpha = 0;
			collisionEnable = false;
			currentActionState = NinjaState.TeleportIn;
			SpawnGenericEffect(vfx_SmokeGrenade);
		}
	break;
	
	case NinjaState.TeleportIn:
		x = targetX;
			y = targetY;
		teleportInWaitTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(teleportInWaitTimer, teleportInWaitTime);
		
		if (_timeIsOver)
		{
			var _stepFactor = CalculateStep(teleportInTime);
			var _alphaStep = 1 * _stepFactor;
			var _scaleStep = 1 * _stepFactor;
			
			if (drawScaleY > 1 && drawAlpha < 1)
			{
				drawAlpha = ApproachTimeFactor(drawAlpha, 1, _alphaStep);
				drawScaleY = ApproachTimeFactor(drawScaleY, 1, _scaleStep);
				drawScaleX = drawScaleY * teleportScaleX;
			}
			else
			{
				collisionEnable = true;
				teleportInWaitTimer = 0;
				currentActionState = NinjaState.Activation;
			}
		}
	break;
	
	case NinjaState.Activation:
		activationTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(activationTimer, activationTime);
		EnableFlash(c_blue, 1);
		
		if (_timeIsOver)
		{
			activationTimer = 0;
			isInvulnerable = false;
			drawColour = c_white;
			currentActionState = NinjaState.Attack;
		}
	break;
	
	case NinjaState.Attack:
		if (activeWeapon.shotCount != shotNumber)
		{
			isShooting = true;
		}
		else
		{
			activeWeapon.shotCount = 0;
			currentActionState = NinjaState.Idle;
		}
	break;
	
	case NinjaState.Deactivation:
		deactivationTimer += global.TimeFactor;
		var _timeIsOver = CheckTimer(deactivationTimer, deactivationTime);
		
		if (_timeIsOver)
		{
			deactivationTimer = 0;
			currentActionState = NinjaState.Idle;
		}
	break;
}