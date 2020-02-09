ClearWeaponData(global.PlayerWeaponData);
ClearWeaponData(global.PlayerAmmoData);
ClearWeaponData(global.EnemyWeaponData);
ClearWeaponData(global.PerksData);
ds_list_destroy(global.ChosenPerks);
ds_list_destroy(global.ActivePerks);
ClearWaveData();