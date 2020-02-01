/// @description WaveSelector

waveSwitchTimer += global.TimeFactor;

var _timeIsOver = CheckTimer(waveSwitchTimer, waveSwitchTime);

if (_timeIsOver)
{
	currentWave = ChooseRandomWave();
	waveData = GetWaveData(currentWave);
}