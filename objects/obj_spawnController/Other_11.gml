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
		return;
	}
		
	for (var i = 0; i < _spawnNumber; i++)
	{
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
			show_debug_message(_whileCounter);
		}
		
		// Spawn the enemy
		_pointForSpawn.enemyToSpawn = _enemyId;
		_pointForSpawn.currentState = SpawnPointState.Reveal;
		_enemySpawned++;
		SetEnemyCount(_enemyId, _enemySpawned);
		IncreaseTotalEnemies();
		ds_map_destroy(_enemyData);
	}
}
		
ds_list_destroy(_activeSpawnPoints);