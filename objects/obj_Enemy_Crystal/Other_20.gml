/// @description ControlWeapon

if (mainWeapon != noone)
{
	mainWeapon.isShooting = isShooting;
	for (var i = 0; i < 3; i++)
	{
		secondaryWeapon[i].isShooting = isShooting;
	}
}