var _previousWeapon = weaponID;
var _lastId = array_length_1d(global.ActiveWeapons) - 1
			
if (_previousWeapon != global.ActiveWeapons[0])
{
	_previousWeapon = Approach(weaponID, global.ActiveWeapons[0], 1);
}
else
{
	_previousWeapon = _lastId;
}
			
SwitchWeaponTo(_previousWeapon);