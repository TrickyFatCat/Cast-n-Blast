/// @description Insert description here

// Inherit the parent event
event_inherited();

enum SpawnPointState
{
	Inactive,
	Active,
	Reveal,
	Spawn,
	Occupied
}

currentState = SpawnPointState.Active;

drawAlpha = 0;

revealProgress = 0;
spawnProgress = 0;

occupiedTime = SetTime(5);
occupiedTimer = 0;

owner = noone;
enemyToSpawn = noone;
drawAngle = 90;
drawScaleY = 1.5;

if (!ds_exists(global.EnemySpawns, ds_type_list))
{
	global.EnemySpawns = ds_list_create();
}

ds_list_add(global.EnemySpawns, id);
instance_deactivate_object(id);