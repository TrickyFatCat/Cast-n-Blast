ClearNestedData(sessionWeaponData);
ClearNestedData(sessionAmmoData);
ds_list_destroy(pickupList);
instance_destroy(mainWeapon);
//instance_destroy(secondaryWeapon);
instance_destroy(ultimateWeapon);
global.Player = noone;