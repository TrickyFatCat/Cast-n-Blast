if (global.TimeFactor == 0)
{
	return;
}

ProcessObject(obj_Weapon, "ProcessWeaponStep");
ProcessObject(obj_Laser, "ProcessLaserStep");
ProcessObject(obj_EnemyRocket, "ProcessSkullStep");
ProcessObject(obj_Bomb, "ProcessBombStep");