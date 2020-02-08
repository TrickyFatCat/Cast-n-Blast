var _hitPointsFactor = caseHitPoints / caseMaxHitPoints;

if (caseLevel = 0)
{
	caseFactor = max(defaultCaseFactor * _hitPointsFactor, 0.85);
}
else
{
	var _rawFactor = defaultCaseFactor - 1;
	caseFactor = 1 + _rawFactor * _hitPointsFactor;
}


var _rawFacor = caseFactor - 1;

maxEnergy = round(defaultMaxEnergy * caseFactor);
if (energy > maxEnergy)
{
	energy = maxEnergy;
}
energyRestoreRate = defaultEnergyRestoreRate * energyRestoreFactor * caseFactor;
shootPenaltyTime = defaultShootPenaltyTime - (defaultShootPenaltyTime * _rawFacor);
overheatPenaltyTime = defaultOverheatPenaltyTime - (defaultOverheatPenaltyTime * _rawFacor);
shieldFactor = defaultShieldFactor - (defaultShieldFactor * _rawFacor);