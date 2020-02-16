/// @description ProcessWeaponChange

if (sys_GameManager.keyWeapon01)
{
	SwitchWeaponTo(PlayerWeapon.PlasmaGun);
}

if (sys_GameManager.keyWeapon02)
{
	SwitchWeaponTo(PlayerWeapon.Shotgun);
}
		
if (sys_GameManager.keyNextWeapon)
{
	SwitchToNextWeapon();
}
		
if (sys_GameManager.keyPreviousWeapon)
{
	SwitchToPreviousWeapon();
}