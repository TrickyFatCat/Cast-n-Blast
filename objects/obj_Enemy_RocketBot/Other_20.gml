if (activeWeapon != noone)
{
	if (!isShooting)
	{
		activeWeapon.directionCurrent = CalculateDirectionToPlayer() - 180;
	}
	activeWeapon.isShooting = isShooting;
}