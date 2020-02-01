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