/// @description WeaponShootingController

if (global.TimeFactor > 0)
{	
	var _shootKey;
	
	if (mainWeapon.isAuto == true)
	{
		_shootKey = sys_GameManager.keyShootAuto;
	}
	else
	{
		_shootKey = sys_GameManager.keyShootSemiAuto;
	}
	
	switch (mainWeapon.currentShootMode)
	{
		case ShootMode.Normal:
		case ShootMode.Burst:
		case ShootMode.Cast:
			if (_shootKey && ultimateState == UltimateState.Idle && ammo > 0 && !isReloading)
			{
				mainWeapon.isShooting = true;
				recoveryDelayTimer = 0;
			}
			else
			{
				mainWeapon.isShooting = false;
			}
		break;
		
		case ShootMode.Charge:
			if (_shootKey && ultimateState == UltimateState.Idle && ammo > 0 && !isReloading)
			{
				mainWeapon.isShooting = true;
				recoveryDelayTimer = 0;
			}
			else if (!_shootKey)
			{
				mainWeapon.isShooting = false;
			}
			
			if (ammo == 0 && ultimateState == UltimateState.Idle && mainWeapon.currentChargeState == ChargeState.Charging)
			{
				mainWeapon.currentChargeState = ChargeState.Wait;
			}
		break;
	}
	
	//if (_shootKey && ultimateState == UltimateState.Idle && ammo == 0 && !isReloading)
	//{
	//	isReloading = true;
	//}
	
	if (sys_GameManager.keyUltimateActivation && ultimatePoints == maxUltimatePoints && ultimateState == UltimateState.Idle)
	{
		isInvulnerable = true;
		SpawnExplosion(x, y + 1, obj_PlayerUltimateExplosion, 1000, 128);
		ApplyShakeToCamera(true, 3);
		ultimateState = UltimateState.Activation;
	}
}