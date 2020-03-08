if (global.TimeFactor == 0)
{
	return;
}

ProcessObject(obj_EnemyRocket, "ProcessSkullStep");
ProcessObject(obj_Bomb, "ProcessBombStep");