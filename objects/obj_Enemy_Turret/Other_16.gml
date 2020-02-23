event_inherited()

mainWeapon.isShooting = true;
mainWeapon.directionCurrent += rotationSpeed * rotationDirection * global.TimeFactor;
for (var i = 0; i < 3; i++)
{
	secondaryWeapon[i].isShooting = true;
	secondaryWeapon[i].directionCurrent = mainWeapon.directionCurrent + 90 * (i + 1);
}