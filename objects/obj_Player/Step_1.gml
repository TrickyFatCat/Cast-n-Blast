// Inherit the parent event
event_inherited();

if (GameIsPaused())
{
	return;
}

CheckPlayerHP;

if (global.CurrentInput == InputMethod.Gamepad)
{
	mainWeapon.laserSightEnabled = true;
	mainWeapon.lasersightAlpha = drawAlpha;
}
else
{
	mainWeapon.laserSightEnabled = false;
}

ProcessDashRecovery;

if (currentState == PlayerState.Idle || currentState == PlayerState.Run || currentState == PlayerState.Dash)
{
	ProcessWeaponChange;
}

ProcessAmmoRecovery;

if (mainWeapon.isShooting)
{
	switch(weaponID)
	{
		case PlayerWeapon.FireBall:
			if (mainWeapon.shootPauseIsOver)
			{
				PlaySound(sfx_fireballShot);
			}
		break;
		
		case PlayerWeapon.Icicles:
			if (mainWeapon.shootPauseIsOver)
			{
				PlaySound(sfx_iciclesShot);
			}
		break;
		
		case PlayerWeapon.Meteor:
			if (mainWeapon.shootPauseIsOver)
			{
				PlaySound(sfx_meteorShot);
			}
		break;
		
		case PlayerWeapon.ArcaneSpear:
			switch(mainWeapon.currentChargeState)
			{
				case ChargeState.Charging:
					PlaySound(sfx_arcaneSpearCharge);
				break;
			
				case (ChargeState.Wait):
					PlaySound(sfx_arcaneSpearChargeEnd);
				break;
				
				case (ChargeState.Execute):
					PlaySound(sfx_arcaneSpearShot);
				break;
			}
		break;
	}
}

if (ultimateWeapon.isShooting)
{
	PlaySound(sfx_ultimateShot);
}