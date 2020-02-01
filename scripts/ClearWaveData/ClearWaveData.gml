var _globalLength = array_length_1d(global.WaveData);

for (var i = 0; i < _globalLength; i++)
{
	var _wave = GetWave(i);
	var _waveData = GetWaveData(_wave);
	
	var _enemiesNumber = array_length_1d(_waveData);
	for (var j = 0; j < _enemiesNumber; j++)
	{
		ds_map_destroy(_waveData[j]);
	}
	
	ds_map_destroy(_wave);
}