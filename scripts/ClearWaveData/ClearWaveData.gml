var _globalLength = array_length_1d(global.WaveData);

for (var i = 0; i < _globalLength; i++)
{
	var _waveData = GetWaveData(i);
	
	var _EnemiesTotal = array_length_1d(_waveData);
	for (var j = 0; j < _EnemiesTotal; j++)
	{
		ds_map_destroy(_waveData[j]);
	}
	
	ds_map_destroy(global.WaveData[i]);
}