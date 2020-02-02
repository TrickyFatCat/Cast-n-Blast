global.WaveData = [];

enum WaveData
{
	Test00,
	Test01,
	Test02
}

// Wave creation
var _waveIndex = WaveData.Test00;
var _waveWeight = 5;
var _enemyNumber = 2;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Fhighter, 1, 5);
SetObjectData(_wave[1], obj_Enemy_Kamikaze, 1, 10);
SetWaveData(_waveIndex, _wave, _waveWeight);