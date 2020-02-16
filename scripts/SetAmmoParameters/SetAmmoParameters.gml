/// @param ammoID
/// @param ammoData

var _ammoID = argument0;
var _ammoData = argument1;

if (_ammoID != noone)
{
	var _ammo = _ammoData[_ammoID];

	ammo =			_ammo[? "ammo"];
	maxAmmo =		_ammo[? "maxAmmo"];
}
else
{
	ammo = noone;
	maxAmmo = noone;
}