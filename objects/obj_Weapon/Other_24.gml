/// @description ShootModeChargeHandler

switch (currentChargeState)
{
	case ChargeState.Idle:
		if (isShooting)
		{
			chargeCostFactor = 1;
			chargeDamageFactor = 1;
			chargeHealFactor = 1;
			chargeRateFactor = 1;
			chargeBulletNumberFactor = 1;
			chargeVelocityFactor = 1;
			chageShakeFactor = 1;
			initialAmmo = owner.ammo;
			currentChargeState = ChargeState.Charging;
		}
	break;
	
	case ChargeState.Charging:
		if (isShooting)
		{
			var _chargeStep = CalculateStep(chargeTime);
			
			if (chargeProgress < 1)
			{
				chargeProgress = ApproachTimeFactor(chargeProgress, 1, _chargeStep);
				
				if (chargeExecuteCountMax > chargeExecuteCountMin)
				{
					var _count = lerp(chargeExecuteCountMin, chargeExecuteCountMax, chargeProgress);
					
					chargeExecuteCount = round(_count);
				}
				
				chargeCostFactor = SetChargeFactor(chargeCostFactor, chargeCostFactorMax);
				chargeDamageFactor = SetChargeFactor(chargeDamageFactor, chargeDamageFactorMax);
				chargeHealFactor = SetChargeFactor(chargeHealFactor, chargeHealFactorMax);
				chargeRateFactor = SetChargeFactor(chargeRateFactor, chargeRateFactorMax);
				chargeBulletNumberFactor = SetChargeFactor(chargeBulletNumberFactor, chargeBulletNumberFactorMax);
				chargeVelocityFactor = SetChargeFactor(chargeVelocityFactor, chargeVelocityFactorMax);
				chargeShakeFactor = SetChargeFactor(chargeShakeFactor, chargeShakeFactorMax);
				RecalculateAmmo;
			}
			else if (chargeWaitTime > 0)
			{
				currentChargeState = ChargeState.Wait;
			}
		}
		else
		{
			currentChargeState = ChargeState.Wait;
		}
	break;
	
	case ChargeState.Wait:
		if (chargeWaitTime > 0 && (isShooting))
		{
			var _chargeWaitStep = CalculateStep(chargeWaitTime);
			
			if (chargeWaitProgress < 1)
			{
				chargeWaitProgress = ApproachTimeFactor(chargeWaitProgress, 1, _chargeWaitStep);
			}
			else
			{
				currentChargeState = ChargeState.Execute;
				chargeWaitProgress = 0;
			}
		}
		else
		{
			currentChargeState = ChargeState.Execute;
			chargeWaitProgress = 0;
		}
	break;
	
	case ChargeState.Execute:
		if (chargeExecuteCount > 0)
		{
			isShooting = true;
			if (shotCount == chargeExecuteCount)
			{
				isShooting = false;
				shotCount = 0;
				chargeProgress = 0;
				chargeCostFactor = 1;
				chargeDamageFactor = 1;
				chargeHealFactor = 1;
				chargeRateFactor = 1;
				chargeBulletNumberFactor = 1;
				chargeVelocityFactor = 1;
				chageShakeFactor = 1;
				currentChargeState = ChargeState.Idle;
			}
		}
		else if (chargeExecuteCount == 0)
		{
			isShooting = false;
			
			if (!isShooting)
			{
				chargeCostFactor = 1;
				chargeDamageFactor = 1;
				chargeHealFactor = 1;
				chargeRateFactor = 1;
				chargeBulletNumberFactor = 1;
				chargeVelocityFactor = 1;
				chageShakeFactor = 1;
				chargeProgress = 0;
				currentChargeState = ChargeState.Idle;
			}
		}
		
		
		SetBulletTransform(hitscanObjects);
		if (isShooting) && (shootPauseIsOver)
		{
			EnableHitscan;
			ApplyCameraShake;
			recoilPowerCurrent = recoilPower;
			shotCount++;
			shootPauseTimer = 0;
		}
	break;
}