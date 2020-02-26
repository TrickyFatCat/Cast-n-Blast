/// @param ammoId
/// @param newValue

var _ammoId = argument0;
var _value = argument1;

var _ammoData = sessionAmmoData[_ammoId];
ds_map_replace(_ammoData, "recoveryTimer", _value);