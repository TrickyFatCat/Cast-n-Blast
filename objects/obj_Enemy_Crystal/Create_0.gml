// Inherit the parent event
event_inherited();
mainWeapon.lasersightAlpha = 0;
mainWeapon.directionCurrent = CalculateDirectionToPlayer();
mainWeapon.lasersightOffset = mainWeapon.bulletSpawnPointOffset;
//mainWeapon.shotSound = sfx_impshot;

secondaryWeapon = [];
for (var i = 0; i < 3; i++)
{
	secondaryWeapon[i] = instance_create_layer(x, y, layer, obj_EnemyWeapon);
	SetEnemyWeapon(weaponId, secondaryWeapon[i]);
	secondaryWeapon[i].directionCurrent = mainWeapon.directionCurrent + 90 * (i + 1);
	secondaryWeapon[i].lasersightAlpha = 0;
	secondaryWeapon[i].lasersightOffset = secondaryWeapon[i].bulletSpawnPointOffset;
}

shootTime = SetTime(5);
shootTimer = 0;

aimTime = SetTime(2);
aimTimer = 0;

rotationSpeed = 0.2;
rotationDirection = choose(-1, 1);

targetingTime = SetTime(3);
targetingTimer = 0;

rotationIsLocked = false;
rotationLockTimer = 0;
rotationLockTime = SetTime(0.5);