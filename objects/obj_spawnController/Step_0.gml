if (isActive && global.TotalEnemies < enemiesMaxNumber)
{
	//SelectWave;
	
	spawnPauseTimer += global.TimeFactor;
	
	var _pauseIsOver = CheckTimer(spawnPauseTimer, spawnPauseTime);
	
	if (_pauseIsOver)
	{
		spawnPauseTimer = 0;
		
		SpawnEnemy;
		
		show_debug_message(global.TotalEnemies);
	}
}