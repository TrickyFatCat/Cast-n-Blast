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
	var _enemy;
	var _enemyNumber;
	var _enemySpawned;
		
	for (var i = 0; i < spawnNumber; i++)
	{
		var _spawnID = irandom_range(0, _activeListSize - 1);
		var _pointForSpawn = _activeSpawnPoints[| _spawnID];
		
		// Choose enemy for spawn//
		_enemyData = ChooseRandomObject(waveData);
		_enemy = GetObjectID(_enemyData);
		_enemyNumber = GetObjectNumber(_enemyData);
		_enemySpawned = GetEnemyCount(_enemy);
		
		show_debug_message(string(object_get_name(_enemy)) + " | max= " + string(_enemyNumber) + " | current= " + string(_enemySpawned));
		
		while (_enemySpawned >= _enemyNumber)
		{
			_enemyData = ChooseRandomObject(waveData);
			_enemy = GetObjectID(_enemyData);
			_enemyNumber = GetObjectNumber(_enemyData);
			_enemySpawned = GetEnemyCount(_enemy);
		}
	
		_pointForSpawn.enemyToSpawn = _enemy;
		_pointForSpawn.currentState = SpawnPointState.Reveal;
		_enemySpawned++;
		SetEnemyCount(_enemy, _enemySpawned);
		global.EnemiesTotal = Approach(global.EnemiesTotal, enemiesMaxNumber, 1);
 
		ds_map_destroy(_enemyData);
	}
}
		
ds_list_destroy(_activeSpawnPoints);