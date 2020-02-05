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
	
	var _shootKey;
	
	if (secondaryWeapon.isAuto == true)
	{
		_shootKey = sys_GameManager.keySecondaryShootAuto;
	}
	else
	{
		_shootKey = sys_GameManager.keySecondaryShootSemiAuto;
	}
	
	if (_shootKey) && (energy != 0)
	{
		secondaryWeapon.isShooting = true;
	}
	else
	{
		secondaryWeapon.isShooting = false;
	}
}