global.WaveData = [];

enum WaveData
{
	Test00,
	Test01,
}

// Wave 00
var _waveIndex = WaveData.Test00;
var _waveWeight = 5;
var _enemyNumber = 3;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Beamer, 1, 1);
SetObjectData(_wave[1], obj_Enemy_Trooper, 1, 1);
SetObjectData(_wave[2], obj_Barrel, 1, 2);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 01
var _waveIndex = WaveData.Test01;
var _waveWeight = 5;
var _enemyNumber = 3;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Fhighter, 1, 5);
SetObjectData(_wave[1], obj_Enemy_Kamikaze, 1, 1);
SetObjectData(_wave[2], obj_Barrel, 1, 2);
SetWaveData(_waveIndex, _wave, _waveWeight);