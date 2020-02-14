/// @description EnemySpawner

var _listSize = ds_list_size(spawnList);
var _activeSpawnPoints = ds_list_create();
		
// Create a list of active spawn points
for (var i = 0; i < _listSize; i++)
{
	var _spawn = spawnList[| i];
	var _spawnState = _spawn.currentState;
			
	if (_spawnState == SpawnPointState.Active)
	{
		ds_list_add(_activeSpawnPoints, _spawn);
	}
}
	
// Choose spawn point and spawn enemy
var _activeListSize = ds_list_size(_activeSpawnPoints);
		
if (_activeListSize >= spawnNumber)
{
	var _enemyData;
	var _enemyId;
	var _enemyNumber;
	var _enemySpawned;
		
	for (var i = 0; i < spawnNumber; i++)
	{
		// Choose a random spawn point
		
		var _spawnID = irandom(_activeListSize - 1);
		var _pointForSpawn = _activeSpawnPoints[| _spawnID];
		
		// Choose a random enemy for spawn
		_enemyData = ChooseRandomObject(waveData);
		_enemyId = GetObjectID(_enemyData);
		_enemyNumber = GetObjectNumber(_enemyData);
		_enemySpawned = GetEnemyCount(_enemyId);
		
		while (_enemySpawned >= _enemyNumber)
		{
			_enemyData = ChooseRandomObject(waveData);
			_enemyId = GetObjectID(_enemyData);
			_enemyNumber = GetObjectNumber(_enemyData);
			_enemySpawned = GetEnemyCount(_enemyId);
		}
		
		// Spawn the enemy
		_pointForSpawn.enemyToSpawn = _enemyId;
		_pointForSpawn.currentState = SpawnPointState.Reveal;
		_enemySpawned++;
		SetEnemyCount(_enemyId, _enemySpawned);
		IncreaseEnemyTotal();
		ds_map_destroy(_enemyData);
	}
}
		
ds_list_destroy(_activeSpawnPoints);