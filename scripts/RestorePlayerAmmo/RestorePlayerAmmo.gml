/// @param restoreNumber

var _number = argument0;

with (global.Player)
{
	ammoCurrent = min(ammoCurrent + _number, ammoCurrentMax);
	ds_map_replace(global.PlayerAmmoData[activeWeapon.ammoID], "ammoCurrent", ammoCurrent);
}