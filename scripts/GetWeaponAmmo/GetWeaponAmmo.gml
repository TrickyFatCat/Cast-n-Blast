/// @param weaponId

var _weaponId = argument0;

var _weaponData = global.PlayerWeaponData[_weaponId];
var _ammoId = _weaponData[? "ammoID"];

with (global.Player)
{
	var _value = GetCurrentAmmo(_ammoId);
}

return _value;