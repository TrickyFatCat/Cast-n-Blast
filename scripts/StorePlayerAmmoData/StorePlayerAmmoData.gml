// Parameters
enum PlayerAmmo
{
	PlasmaGun
}

#macro TestAmmo global.PlayerAmmoData[PlayerAmmo.PlasmaGun]

// Ammo Data
global.PlayerAmmoData[PlayerAmmo.PlasmaGun] = ds_map_create();
ds_map_add(TestAmmo, "ammoCurrent",	200);
ds_map_add(TestAmmo, "ammoCurrentMax",	200);