if (isActive && global.TotalEnemies < enemiesMaxNumber && !GameIsPaused())
{
	//SelectWave;
	
	spawnPauseTimer += global.TimeFactor;
	
	var _pauseIsOver = CheckTimer(spawnPauseTimer, spawnPauseTime);
	
	if (_pauseIsOver)
	{
		spawnPauseTimer = 0;
		
		SpawnEnemy;
	}
}