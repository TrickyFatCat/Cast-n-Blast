// Inherit the parent event
event_inherited();
SetEnemyWeapon(EnemyWeapon.RocketGun);
mainWeapon.visible = false;
isShooting = false;
mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
//mainWeapon.shotSound = sfx_impshot;