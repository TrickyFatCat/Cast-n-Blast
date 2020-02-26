/// @description ProcessWeaponChange

if (sys_GameManager.keyWeapon01)
{
	SwitchWeaponTo(global.ActiveWeapons[0]);
}

if (sys_GameManager.keyWeapon02)
{
	SwitchWeaponTo(global.ActiveWeapons[1]);
}

if (sys_GameManager.keyWeapon03)
{
	SwitchWeaponTo(global.ActiveWeapons[2]);
}

if (sys_GameManager.keyWeapon04)
{
	SwitchWeaponTo(global.ActiveWeapons[3]);
}
		
if (sys_GameManager.keyNextWeapon)
{
	SwitchToNextWeapon();
}
		
if (sys_GameManager.keyPreviousWeapon)
{
	SwitchToPreviousWeapon();
}