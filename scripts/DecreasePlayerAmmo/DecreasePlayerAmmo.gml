/// @param amount;

var _amount = argument0;

with (global.Player)
{
	DecreaseAmmo(_amount);
	ds_map_replace(sessionAmmoData[mainWeapon.ammoID], "ammo", ammo);
}