global.Round++;

if (global.Round >= 2)
{
	var _newWave = choose(WaveData.Test00, WaveData.Test01);
	
	SetWave(_newWave);
}