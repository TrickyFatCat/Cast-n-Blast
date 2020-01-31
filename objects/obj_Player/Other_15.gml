/// @description WeaponShootingController

if (global.TimeFactor > 0)
{	
	var _shootKey;
	
	if (activeWeapon.isAuto == true)
	{
		_shootKey = sys_GameInitialisator.keyShootAuto;
	}
	else
	{
		_shootKey = sys_GameInitialisator.keyShootSemiAuto;
	}
	
	if (_shootKey) && (ammoCurrent != 0)
	{
		activeWeapon.isShooting = true;
	}
	else
	{
		activeWeapon.isShooting = false;
	}
}