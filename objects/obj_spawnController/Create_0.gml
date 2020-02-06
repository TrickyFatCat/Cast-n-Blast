/// User events
#macro SelectWave event_user(0)
#macro SpawnEnemy event_user(1)

/// Spawn pause timer
spawnPauseTime = SetTime(5);
spawnPauseTimer = spawnPauseTime;

/// Enemies spawn limits
enemyCountMax = 15;
spawnNumber = 1;

/// Spawn list
spawnList = ds_list_create();
var _spawnPointsCount = instance_number(obj_enemySpawn);

for (var i = 0; i < _spawnPointsCount; i++)
{
	var _spawnPoint = instance_find(obj_enemySpawn, i);
	
	ds_list_add(spawnList, _spawnPoint); 
}

/// Wave data
currentWaveIndex = WaveData.Test00;
currentWave = GetWave(currentWaveIndex);
waveData = GetWaveData(currentWave);
waveSwitchTime = SetTime(10);
waveSwitchTimer = 0;