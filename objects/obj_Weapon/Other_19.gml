/// @description CalculateRateOfFire

if (rateOfFireAccelerated) && (isShooting)
{
	
	if (rateOfFireCurrent != rateOfFireMax)
	{
		rateOfFireCurrent = ApproachTimeFactor(rateOfFireCurrent, rateOfFireMax, rateOfFireIncrStep);
	}
}
else if (rateOfFireCurrent != rateOfFireMin)
{
	{
		rateOfFireCurrent = ApproachTimeFactor(rateOfFireCurrent, rateOfFireMin, rateOfFireDecrStep);
	}
}