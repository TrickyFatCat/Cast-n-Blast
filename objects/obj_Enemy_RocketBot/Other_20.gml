if (mainWeapon != noone)
{
	if (!isShooting)
	{
		mainWeapon.directionCurrent = CalculateDirectionToPlayer() - 180;
	}
	mainWeapon.isShooting = isShooting;
}