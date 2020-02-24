/// @description ProcessWeaponReload

if (sys_GameManager.keyReload && !isReloading && ammo < maxAmmo)
{
	isReloading = true;
	isShooting = false;
}

if (isReloading)
{
	isShooting = false;
	reloadTimer += global.TimeFactor;
	var _timeIsOver = CheckTimer(reloadTimer, reloadTime);
	
	if (_timeIsOver)
	{
		reloadTimer = 0;
		isReloading = false;
		IncreasePlayerAmmo(maxAmmo);
	}
}