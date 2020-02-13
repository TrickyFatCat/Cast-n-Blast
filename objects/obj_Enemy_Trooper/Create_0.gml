// Inherit the parent event
event_inherited();
SetEnemyWeapon(EnemyWeapon.TrooperGun);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
//activeWeapon.shotSound = sfx_impshot;