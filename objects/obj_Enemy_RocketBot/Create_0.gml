// Inherit the parent event
event_inherited();
secondaryWeapon = instance_create_layer(x, y, layer, obj_EnemyWeapon);
SetEnemyWeapon(weaponId, secondaryWeapon);
//mainWeapon.shotSound = sfx_impshot;