show_debug_message(global.TotalEnemies);

if (isActive && global.TotalEnemies < 25 && !GameIsPaused())
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