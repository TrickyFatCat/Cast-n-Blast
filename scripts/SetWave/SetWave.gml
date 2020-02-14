/// @param waveIndex

var _waveIndex = argument0;

with (obj_SpawnController)
{
	currentWaveIndex = _waveIndex;
	waveData = GetWaveData(currentWaveIndex);
	CalculateEnemiesMaxNumber();
}