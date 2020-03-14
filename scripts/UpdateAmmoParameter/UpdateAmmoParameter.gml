/// @param perkId
/// @param weaponId
/// @param parameter
/// @param increase
/// @param absolute

var _perkId = argument0;
var _weaponId = argument1;
var _parameter = argument2;
var _increase = argument3;
var _absolute = argument4;

var _sessionWeaponData = global.Player.sessionWeaponData;
var _weaponData = _sessionWeaponData[_weaponId];
var _ammoId = _weaponData[? "ammoID"];
var _sessionAmmoData = global.Player.sessionAmmoData;
var _ammoData = _sessionAmmoData[_ammoId];
var _defaultAmmoData = global.PlayerAmmoData[_ammoId];
var _defaultValue = _defaultAmmoData[? _parameter];
var _newValue;

switch (_absolute)
{
	case true:
		if (_increase)
		{
			_newValue = IncreaseParameterAbsolute(_perkId, _defaultValue);
		}
		else
		{
			_newValue = DecreaseParameterAbsolute(_perkId, _defaultValue);
		}
	break;
	
	case false:
		if (_increase)
		{
			_newValue = IncreaseParameterPercent(_perkId, _defaultValue);
		}
		else
		{
			_newValue = DecreaseParameterPercent(_perkId, _defaultValue);
		}
	break;
}

ds_map_replace(_ammoData, _parameter, _newValue);
ds_map_replace(_ammoData, "ammo", _newValue);
UpdateMainWeapon();