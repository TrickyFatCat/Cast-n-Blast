maxEnergy = defaultMaxEnergy * caseFactor;
energyRestoreRate = energyDefaultRestoreRate * energyRestoreFactor * caseFactor;
shootPenaltyTime = defaultShootPenaltyTime - (defaultShootPenaltyTime * (1 - caseFactor));
overheatPenaltyTime = defaultOverheatPenaltyTime - (defaultOverheatPenaltyTime * (1 - caseFactor));
damageReductionFactor = defaultDamageReductionFactor - (defaultDamageReductionFactor * (1 - caseFactor));