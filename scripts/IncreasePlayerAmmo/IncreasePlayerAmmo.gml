/// @param amount;

var _amount = argument0;

with (global.Player)
{
	IncreaseAmmo(_amount);
	ds_map_replace(sessionAmmoData[mainWeapon.ammoID], "ammo", ammo);
}