with (obj_spawnController)
{
	if global.DifficultyLevel == 1 && enemyCountMax != 8
	{
		enemyCountMax = 8;
	}

	if global.DifficultyLevel == 2 && enemyCountMax != 10
	{
		enemyCountMax = 10;
		spawnPauseTime = SetTime(4);
	}

	if global.DifficultyLevel == 3 && enemyCountMax != 14 
	{
		enemyCountMax = 14;
	}

	if global.DifficultyLevel == 4 && enemyCountMax != 18
	{
		enemyCountMax = 18;
		spawnPauseTime = SetTime(1);
	}

	if global.DifficultyLevel == 5 && enemyCountMax != 22
	{
		enemyCountMax = 22;
	}
	if global.DifficultyLevel == 6 && enemyCountMax != 26
	{
		enemyCountMax = 26;
		spawnPauseTime = SetTime(0.75);
	}
	if global.DifficultyLevel == 7 && enemyCountMax != 30
	{
		enemyCountMax = 30;
	}
	if global.DifficultyLevel == 8 && enemyCountMax != 35
	{
		enemyCountMax = 35;
	}
	if global.DifficultyLevel == 9 && enemyCountMax != 40
	{
		enemyCountMax = 40;
	}
	if global.DifficultyLevel == 10 && enemyCountMax != 45
	{
		enemyCountMax = 45;
		spawnPauseTime = SetTime(0.5);
	}
}