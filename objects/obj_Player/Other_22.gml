/// @description ProcessWeaponChange

if (sys_GameManager.keyWeapon01)
{
	SwitchWeaponTo(PlayerWeapon.FireBall);
}

if (sys_GameManager.keyWeapon02)
{
	SwitchWeaponTo(PlayerWeapon.Icicles);
}
		
if (sys_GameManager.keyNextWeapon)
{
	SwitchToNextWeapon();
}
		
if (sys_GameManager.keyPreviousWeapon)
{
	SwitchToPreviousWeapon();
}