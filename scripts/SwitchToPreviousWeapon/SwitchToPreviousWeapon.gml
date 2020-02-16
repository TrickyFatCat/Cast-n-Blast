var _previousWeapon = weaponID;
			
if (_previousWeapon != global.FirstWeapon)
{
	_previousWeapon = Approach(weaponID, global.FirstWeapon, 1);
}
else
{
	_previousWeapon = global.LastWeapon;
}
			
SwitchWeaponTo(_previousWeapon);