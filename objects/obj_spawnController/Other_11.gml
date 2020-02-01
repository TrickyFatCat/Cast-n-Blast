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
		
if (_activeListSize > 0)
{
	var _spawnID = irandom_range(0, _activeListSize - 1);
	var _pointForSpawn = _activeSpawnPoints[| _spawnID];
		
	// Choose enemy for spawn//
	var _enemyData = ChooseRandomObject(waveData);
	var _enemy = GetObjectID(_enemyData);
	
	_pointForSpawn.enemyToSpawn = _enemy;
	_pointForSpawn.currentState = SpawnPointState.Reveal;
	
	ds_map_destroy(_enemyData);
}
		
ds_list_destroy(_activeSpawnPoints);