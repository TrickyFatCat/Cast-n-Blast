/// @description EnemySpawner


var _listSize = ds_list_size(global.EnemySpawns);
var _activeSpawnPoints = ds_list_create();
		
// Create a list of active spawn points
for (var i = 0; i < _listSize; i++)
{
	var _spawn = global.EnemySpawns[| i];
	var _spawnState = _spawn.currentState;
			
	if (_spawnState == SpawnPointState.Active)
	{
		ds_list_add(_activeSpawnPoints, _spawn);
	}
}
	
// Choose spawn point and spawn enemy
var _activeListSize = ds_list_size(_activeSpawnPoints);
var _whileCounter = 0;

if (_activeListSize >= spawnNumber)
{
	var _enemyData;
	var _enemyId;
	var _enemyNumber;
	var _enemySpawned;
	
	var _enemiesDifference = enemiesMaxNumber - global.TotalEnemies;
	var _spawnNumber = spawnNumber;
	
	if (_spawnNumber > _enemiesDifference)
	{
		_spawnNumber = _enemiesDifference;
	}
	
	if (_spawnNumber = 0)
	{
		ds_list_destroy(_activeSpawnPoints);
		return;
	}
		
	for (var i = 0; i < _spawnNumber; i++)
	{
		if (GameIsPaused())
		{
			break;
		}
		// Choose a random spawn point
		var _spawnID = irandom(_activeListSize - 1);
		var _pointForSpawn = _activeSpawnPoints[| _spawnID];
		
		// Choose a random enemy for pawn
		_enemyData = ChooseRandomObject(waveData);
		_enemyId = GetObjectID(_enemyData);
		_enemyNumber = GetObjectNumber(_enemyData);
		_enemySpawned = GetEnemyCount(_enemyId);
		
		while (_enemySpawned >= _enemyNumber)
		{
			ds_map_destroy(_enemyData);
			_enemyData = ChooseRandomObject(waveData);
			_enemyId = GetObjectID(_enemyData);
			_enemyNumber = GetObjectNumber(_enemyData);
			_enemySpawned = GetEnemyCount(_enemyId);
			_whileCounter++;
			if (_whileCounter > 50)
			{
				show_message("Infinite loop in obj_SpawnController occures, the spawn process was interrupted.");
				ds_map_destroy(_enemyData);
				ds_list_destroy(_activeSpawnPoints);
				return;
			}
			show_debug_message(_whileCounter);
		}
		
		// Spawn the enemy
		_pointForSpawn.enemyToSpawn = _enemyId;
		_pointForSpawn.currentState = SpawnPointState.Reveal;
		instance_activate_object(_pointForSpawn);
		_enemySpawned++;
		SetEnemyCount(_enemyId, _enemySpawned);
		IncreaseTotalEnemies();
		ds_map_destroy(_enemyData);
	}
}
		
ds_list_destroy(_activeSpawnPoints);