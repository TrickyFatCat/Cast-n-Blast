/// @description WeaponShootingController

if (global.TimeFactor > 0)
{	
	var _shootKey;
	
	if (activeWeapon.isAuto == true)
	{
		_shootKey = sys_GameManager.keyShootAuto;
	}
	else
	{
		_shootKey = sys_GameManager.keyShootSemiAuto;
	}
	
	if (_shootKey) && (energy != 0)
	{
		activeWeapon.isShooting = true;
	}
	else
	{
		activeWeapon.isShooting = false;
	}
}