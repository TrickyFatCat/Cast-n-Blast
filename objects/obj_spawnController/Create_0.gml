/// User events
#macro SelectWave event_user(0)
#macro SpawnEnemy event_user(1)

isActive = false;

/// Spawn pause timer
spawnPauseTime = SetTime(1);
spawnPauseTimer = spawnPauseTime;

/// Enemies spawn limits
spawnNumber = 5;

if (!ds_exists(global.EnemySpawns, ds_type_list))
{
	global.EnemySpawns = ds_list_create();
}

/// Wave data
currentWaveIndex = choose(WaveData.R01W01, WaveData.R01W02, WaveData.R01W03);
waveData = GetWaveData(currentWaveIndex);
waveSwitchTime = SetTime(10);
waveSwitchTimer = 0;

global.TotalEnemies = 0;

CalculateEnemiesMaxNumber();