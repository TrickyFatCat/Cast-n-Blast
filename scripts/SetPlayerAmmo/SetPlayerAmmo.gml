/// @param ammoID

var _ammoID = argument0;

if (_ammoID != noone)
{
	var _ammo = sessionAmmoData[_ammoID];

	ammo =			_ammo[? "ammo"];
	maxAmmo =		_ammo[? "maxAmmo"];
}
else
{
	ammo = noone;
	maxAmmo = noone;
}