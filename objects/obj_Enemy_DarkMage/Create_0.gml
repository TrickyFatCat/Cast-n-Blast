// Inherit the parent event
event_inherited();
mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
mainWeapon.lasersightAlpha = 0;
//mainWeapon.shotSound = sfx_impshot;

shootTime = SetTime(3);
shootTimer = 0;

aimTime = SetTime(2);
aimTimer = 0;

rotationSpeed = 0.275;

targetingTime = SetTime(3);
targetingTimer = 0;

aimIsLocked = false;
aimLockTime = SetTime(0.5);
aimLockTimer = 0;

drawColour = c_fuchsia;