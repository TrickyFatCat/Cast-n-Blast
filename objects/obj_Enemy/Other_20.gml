/// @description ControlWeapon

if (activeWeapon != noone)
{
	activeWeapon.directionCurrent = point_direction(x, y, playerX, playerY);
	activeWeapon.isShooting = isShooting;
}