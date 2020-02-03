global.WaveData = [];

enum WaveData
{
	Test00,
	Test01,
	Test02
}

// Wave 00
var _waveIndex = WaveData.Test00;
var _waveWeight = 5;
var _enemyNumber = 2;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze, 1, 0);
SetObjectData(_wave[1], obj_Enemy_Trooper, 1, 20);
SetObjectData(_wave[1], obj_Barrel, 1, 1);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 01
var _waveIndex = WaveData.Test01;
var _waveWeight = 5;
var _enemyNumber = 1;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Fhighter, 1, 5);
SetWaveData(_waveIndex, _wave, _waveWeight);