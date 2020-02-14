global.WaveData = [];
global.EnemyCountData = ds_map_create();

AddEnemyToCounter(obj_Enemy_Kamikaze);
AddEnemyToCounter(obj_Enemy_Fighter);
AddEnemyToCounter(obj_Enemy_Beamer);
AddEnemyToCounter(obj_Enemy_Trooper);
AddEnemyToCounter(obj_Enemy_Ninja);
AddEnemyToCounter(obj_Enemy_Turret);
AddEnemyToCounter(obj_Enemy_RocketBot);

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
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		3,	5);
SetObjectData(_wave[1], obj_Enemy_Fighter,		4,	5);
SetObjectData(_wave[2], obj_Enemy_Beamer,		2,	5);
SetObjectData(_wave[3], obj_Enemy_Trooper,		4,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		3,	5);
SetObjectData(_wave[5], obj_Enemy_Turret,		5,	5);
SetObjectData(_wave[6], obj_Enemy_RocketBot,	2,	5);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 01
var _waveIndex = WaveData.Test01;
var _waveWeight = 5;
var _enemyNumber = 7;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		5,	5);
SetObjectData(_wave[1], obj_Enemy_Fighter,		2,	5);
SetObjectData(_wave[2], obj_Enemy_Beamer,		3,	5);
SetObjectData(_wave[3], obj_Enemy_Trooper,		1,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		4,	5);
SetObjectData(_wave[5], obj_Enemy_Turret,		3,	5);
SetObjectData(_wave[6], obj_Enemy_RocketBot,	1,	5);
SetWaveData(_waveIndex, _wave, _waveWeight);