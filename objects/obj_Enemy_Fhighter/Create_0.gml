/// @description Insert description here

// Inherit the parent event
event_inherited();

//activeWeapon = instance_create_layer(x, y, layer, obj_weapon_enemy);
//weaponID = EnemyWeapon.ImpFireball;
SetEnemyWeapon(EnemyWeapon.Pistol);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
//activeWeapon.shotSound = sfx_impshot;