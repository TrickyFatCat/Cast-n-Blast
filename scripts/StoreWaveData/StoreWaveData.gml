global.WaveData = [];

enum WaveData
{
	R01W01,
	R01W02,
	R01W03,
	R02W01,
	R02W02,
	R02W03,
	R06W01,
	R06W02,
	R06W03,
	R12W01,
	R12W02,
	R12W03,
	R20W01,
	R20W02,
	R20W03
}

#region Round01
// Wave 01
var _waveIndex = WaveData.R01W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	5);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	5);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	5);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	5);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.R01W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			0,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	5);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	5);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	50,	5);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	5,	5);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.R01W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			0,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	5);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	5);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	50,	5);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	5,	5);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region Round02
// Wave 01
var _waveIndex = WaveData.R02W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		2,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		3,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.R02W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	0);
SetObjectData(_wave[4], obj_Enemy_Ninja,		2,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		3,	2);
SetObjectData(_wave[7], obj_Enemy_Bomber,		2,	5);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.R02W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		2,	3);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		4,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		3,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region Round06
// Wave 01
var _waveIndex = WaveData.R06W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		2,	1);
SetObjectData(_wave[3], obj_Enemy_Demon,		4,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		2,	3);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.R06W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		2,	1);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	0);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		4,	3);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		3,	3);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.R06W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		2,	1);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		1,	1);
SetObjectData(_wave[3], obj_Enemy_Demon,		8,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		2,	3);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		3,	2);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region Round12
// Wave 01
var _waveIndex = WaveData.R12W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		1,	1);
SetObjectData(_wave[3], obj_Enemy_Demon,		4,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		3,	3);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		3,	3);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.R12W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		5,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		5,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		4,	1);
SetObjectData(_wave[5], obj_Enemy_Crystal,		3,	1);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.R12W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		2,	1);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		1,	1);
SetObjectData(_wave[3], obj_Enemy_Demon,		8,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		4,	3);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region Round20
// Wave 01
var _waveIndex = WaveData.R20W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		7,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		5,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		4,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		3,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		4,	5);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.R20W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		7,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		1,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		5,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		3,	5);
SetObjectData(_wave[6], obj_Enemy_Shaman,		4,	5);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.R20W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		7,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		1,	5);
SetObjectData(_wave[3], obj_Enemy_Demon,		5,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		4,	5);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		5,	5);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion