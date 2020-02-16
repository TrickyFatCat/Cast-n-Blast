/// @description ControlWeapon

if (mainWeapon != noone)
{
	mainWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
	mainWeapon.isShooting = isShooting;
}