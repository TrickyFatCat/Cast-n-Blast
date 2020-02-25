/// @param ammoId
/// @param maxValue
/// @param restoreRate

var _ammoId = argument0;
var _maxValue = argument1;
var _restoreRate = argument2;

global.PlayerAmmoData[_ammoId] = ds_map_create();
var _ammoData = global.PlayerAmmoData[_ammoId];
ds_map_add(_ammoData, "ammo",			_maxValue);
ds_map_add(_ammoData, "maxAmmo",		_maxValue);
ds_map_add(_ammoData, "restoreRate",	_restoreRate);