/// @param waveIndex

var _waveIndex = argument0;

with (obj_spawnController)
{
	currentWave = GetWave(_waveIndex);
	waveData = GetWaveData(currentWave);
}