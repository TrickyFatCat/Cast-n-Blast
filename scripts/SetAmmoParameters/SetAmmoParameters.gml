/// @param ammoID
/// @param ammoData

var _ammoID = argument0;
var _ammoData = argument1;

if (_ammoID != noone)
{
	var _ammo = _ammoData[_ammoID];

	ammoCurrent =			_ammo[? "ammoCurrent"];
	ammoCurrentMax =		_ammo[? "ammoCurrentMax"];
}
else
{
	ammoCurrent = noone;
	ammoCurrentMax = noone;
}