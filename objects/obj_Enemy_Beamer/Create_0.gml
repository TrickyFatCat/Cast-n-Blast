// Inherit the parent event
event_inherited();
SetEnemyWeapon(EnemyWeapon.BeamerGun);
activeWeapon.visible = false;
isShooting = false;
activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
//activeWeapon.shotSound = sfx_impshot;

shootTime = SetTime(5);
shootTimer = 0;

aimTime = SetTime(2);
aimTimer = 0;