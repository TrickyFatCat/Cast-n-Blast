var _nextWeapon = weaponID;
			
if (_nextWeapon != global.LastWeapon)
{
	_nextWeapon = Approach(weaponID, global.LastWeapon, 1);
}
else
{
	_nextWeapon = global.FirstWeapon;
}
			
SwitchWeaponTo(_nextWeapon);