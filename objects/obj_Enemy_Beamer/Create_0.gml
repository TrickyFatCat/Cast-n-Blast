// Inherit the parent event
event_inherited();
SetEnemyWeapon(EnemyWeapon.BeamerGun);
mainWeapon.visible = false;
isShooting = false;
mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
mainWeapon.lasersightAlpha = 0;
//mainWeapon.shotSound = sfx_impshot;

shootTime = SetTime(5);
shootTimer = 0;

aimTime = SetTime(2);
aimTimer = 0;

rotationSpeed = 0.275;

targetingTime = SetTime(3);
targetingTimer = 0;

aimIsLocked = false;
aimLockTime = SetTime(0.5);
aimLockTimer = 0;