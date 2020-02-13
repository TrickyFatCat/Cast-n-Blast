global.EnemiesNumber = instance_number(obj_Enemy);
var _listSize = ds_list_size(spawnList);


if (isActive && global.EnemiesNumber < enemyCountMax)
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