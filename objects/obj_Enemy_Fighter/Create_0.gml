// Inherit the parent event
event_inherited();
SetEnemyWeapon(EnemyWeapon.FighterGun);
mainWeapon.visible = false;
isShooting = false;
mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
//mainWeapon.shotSound = sfx_impshot;