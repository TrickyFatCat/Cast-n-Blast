var _nextWeapon = weaponID;
var _lastId = array_length_1d(global.ActiveWeapons) - 1
			
if (_nextWeapon != _lastId)
{
	_nextWeapon = Approach(weaponID, global.ActiveWeapons[_lastId], 1);
}
else
{
	_nextWeapon = global.ActiveWeapons[0];
}
			
SwitchWeaponTo(_nextWeapon);