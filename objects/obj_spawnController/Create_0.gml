/// User events
#macro SelectWave event_user(0)
#macro SpawnEnemy event_user(1)

isActive = false;

/// Spawn pause timer
spawnPauseTime = SetTime(2);
spawnPauseTimer = spawnPauseTime;

/// Enemies spawn limits
spawnNumber = 1;

/// Spawn list
spawnList = ds_list_create();
var _spawnPointsCount = instance_number(obj_EnemySpawn);

for (var i = 0; i < _spawnPointsCount; i++)
{
	var _spawnPoint = instance_find(obj_EnemySpawn, i);
	
	ds_list_add(spawnList, _spawnPoint); 
}

/// Wave data
currentWaveIndex = WaveData.Test00;
waveData = GetWaveData(currentWaveIndex);
waveSwitchTime = SetTime(10);
waveSwitchTimer = 0;

global.TotalEnemies = 0;

CalculateEnemiesMaxNumber();