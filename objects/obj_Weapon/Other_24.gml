/// @description ShootModeChargeHandler

switch (currentChargeState)
{
	case ChargeState.Idle:
		if (isShooting)
		{
			currentChargeState = ChargeState.Charging;
		}
		else
		{
			chargeDamageFactor = 1;
			chargeHealFactor = 1;
			chargeRateFactor = 1;
			chargeBulletNumberFactor = 1;
			chargeVelocityFactor = 1;
			chargeShakeFactor = 1;
		}
	break;
	
	case ChargeState.Charging:
		if (isShooting)
		{
			var _chargeStep = CalculateStep(chargeTime);
			
			if (chargeProgress <= 1)
			{
				chargeProgress = ApproachTimeFactor(chargeProgress, 1, _chargeStep);
				
				if (chargeExecuteCountMax > chargeExecuteCountMin)
				{
					var _count = lerp(chargeExecuteCountMin, chargeExecuteCountMax, chargeProgress);
					
					chargeExecuteCount = round(_count);
				}
				
				chargeDamageFactor = SetChargeFactor(chargeDamageFactor, chargeDamageFactorMax);
				chargeHealFactor = SetChargeFactor(chargeHealFactor, chargeHealFactorMax);
				chargeRateFactor = SetChargeFactor(chargeRateFactor, chargeRateFactorMax);
				chargeBulletNumberFactor = SetChargeFactor(chargeBulletNumberFactor, chargeBulletNumberFactorMax);
				chargeVelocityFactor = SetChargeFactor(chargeVelocityFactor, chargeVelocityFactorMax);
				chargeShakeFactor = SetChargeFactor(chargeShakeFactor, chargeShakeFactorMax);
			}
			else
			{
				currentChargeState = ChargeState.Wait;
				chargeProgress = 0;
			}
		}
		else
		{
			currentChargeState = ChargeState.Execute;
			chargeProgress = 0;
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
		else if (!isShooting)
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
				currentChargeState = ChargeState.Idle;
			}
		}
		else if (chargeExecuteCount <= 0)
		{
			if (!isShooting)
			{
				currentChargeState = ChargeState.Idle;
			}
		}
		
		ExecuteShootModeNormal;
	break;
}