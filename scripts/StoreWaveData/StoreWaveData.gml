global.WaveData = [];

enum WaveData
{
	Test00,
	Test01,
}

// Wave 00
var _waveIndex = WaveData.Test00;
var _waveWeight = 5;
var _enemyNumber = 7;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze, 1,	5);
SetObjectData(_wave[1], obj_Enemy_Fighter,	1,	5);
SetObjectData(_wave[2], obj_Enemy_Beamer,	1,	5);
SetObjectData(_wave[3], obj_Enemy_Trooper,	1,	500);
SetObjectData(_wave[4], obj_Enemy_Ninja,	1,	5);
SetObjectData(_wave[5], obj_Enemy_Turret,	1,	5);
SetObjectData(_wave[6], obj_Barrel,			1,	1);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 01
var _waveIndex = WaveData.Test01;
var _waveWeight = 5;
var _enemyNumber = 7;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze, 1,	5);
SetObjectData(_wave[1], obj_Enemy_Fighter,	1,	5);
SetObjectData(_wave[2], obj_Enemy_Beamer,	1,	5);
SetObjectData(_wave[3], obj_Enemy_Trooper,	1,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,	1,	5);
SetObjectData(_wave[5], obj_Enemy_Turret,	1,	5);
SetObjectData(_wave[6], obj_Barrel,			1,	1);
SetWaveData(_waveIndex, _wave, _waveWeight);