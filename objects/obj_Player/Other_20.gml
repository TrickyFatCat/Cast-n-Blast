/// @description ProcessUltimate
switch (ultimateState)
{
	case UltimateState.Idle:
	break;
	
	case UltimateState.Activation:
		currentScaleX = 1.25;
		drawScaleX = currentScaleX;
		drawScaleY = currentScaleX;
		drawColour = make_color_rgb(65, 65, 255);
	break;
	
	case UltimateState.Process:
		if (ultimatePoints > 0)
		{
			ultimateWeapon.isShooting = true;
			EnableFlash(c_aqua, 1);
			IncreaseHitPoints(1);
		}
		else
		{
			ultimateWeapon.isShooting = false;
			scaleSign = sign(drawScaleX);
			ultimateState = UltimateState.Deactivation;
			
		}
	break;
	
	case UltimateState.Deactivation:
		var _step = CalculateStep(ultimateDeactivaitionTime);
		
		if (ultimateDeactivationProgress < 1)
		{
			ultimateDeactivationProgress = ApproachTimeFactor(ultimateDeactivationProgress, 1, _step);
			currentScaleX = LerpTimeFactor(1.25, 1, ultimateDeactivationProgress);
			drawScaleX = scaleSign * currentScaleX;
			drawScaleY = currentScaleX;
		}
		else
		{
			drawColour = c_white;
			isInvulnerable = false;
			ultimateState = UltimateState.Idle;
			ultimateDeactivationProgress = 0;
		}
	break;
}