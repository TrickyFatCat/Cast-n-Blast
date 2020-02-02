var _hitPointsFactor = legsHitPoints / legsMaxHitPoints;

if (legsLevel = 0)
{
	legsFactor = max(defaultLegsFactor * _hitPointsFactor, 0.85);
}
else
{
	var _rawFactor = defaultLegsFactor - 1;
	legsFactor = 1 + _rawFactor * _hitPointsFactor;
}


maxVelocity = defaultMaxVelocity * legsFactor;
dashVelocity = deafaultDashVelocity * legsFactor;
dashCost = round(defaultDashCost + legsLevel);