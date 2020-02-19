/// @description CalculateSpread

spread = spreadAngleCurrent / 2;

if (spreadIsDynamic)
{
	var _spreadIncrStep = spreadAngleMax * spreadAngleIncrFactor;
	var _spreadDecrStep = spreadAngleMax * spreadAngleDecrFactor;
	
	if ((isShooting) && (shootPauseIsOver))
	{
		if (spreadAngleCurrent != spreadAngleMax)
		{
		spreadAngleCurrent = Approach(spreadAngleCurrent, spreadAngleMax, _spreadIncrStep);
		}
	}
	else if (spreadAngleCurrent != spreadAngleMin)
	{
		spreadAngleCurrent = ApproachTimeFactor(spreadAngleCurrent, spreadAngleMin, _spreadDecrStep);
	}
}