global.WaveData = [];

enum WaveData
{
	S01_W01,
	S01_W02,
	S01_W03,
	//------//
	S02_W01,
	S02_W02,
	S02_W03,
	//------//
	S03_W01,
	S03_W02,
	S03_W03,
	S03_W04,
	S03_W05,
	S03_W06,
	//------//
	S04_W01,
	S04_W02,
	S04_W03,
	S04_W04,
	S04_W05,
	S04_W06,
	//------//
	S05_W01,
	S05_W02,
	S05_W03,
	S05_W04,
	S05_W05,
	S05_W06,
	//------//
	S06_W01,
	S06_W02,
	S06_W03,
	S06_W04,
	S06_W05,
	S06_W06,
	//------//
	S07_W01,
	S07_W02,
	S07_W03,
	S07_W04,
	S07_W05,
	S07_W06,
	//------//
	S08_W01,
	S08_W02,
	S08_W03,
	S08_W04,
	S08_W05,
	S08_W06,
	//------//
	S09_W01,
	S09_W02,
	S09_W03,
	S09_W04,
	S09_W05,
	S09_W06,
	//------//
	S10_W01,
	S10_W02,
	S10_W03,
	S10_W04,
	S10_W05,
	S10_W06
}

#region Wave Set 01
// S01_W01
var _waveIndex = WaveData.S01_W01;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		3,	5);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	0);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 02
var _waveIndex = WaveData.S01_W02;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	1);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		4,	5);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);

// Wave 03
var _waveIndex = WaveData.S01_W03;
var _waveWeight = 5;
var _enemyNumber = 10;

var _wave = CreateDataMap(_enemyNumber);
SetObjectData(_wave[0], obj_Enemy_Kamikaze,		0,	0);
SetObjectData(_wave[1], obj_Enemy_Imp,			50,	5);
SetObjectData(_wave[2], obj_Enemy_DarkMage,		0,	0);
SetObjectData(_wave[3], obj_Enemy_Demon,		0,	0);
SetObjectData(_wave[4], obj_Enemy_Ninja,		0,	0);
SetObjectData(_wave[5], obj_Enemy_Crystal,		0,	0);
SetObjectData(_wave[6], obj_Enemy_Shaman,		0,	0);
SetObjectData(_wave[7], obj_Enemy_Bomber,		0,	0);
SetObjectData(_wave[8], obj_Enemy_EvolvedImp,	0,	0);
SetObjectData(_wave[9], obj_Enemy_EvolvedDemon,	0,	0);
SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region Round02
// Wave 01
var _waveIndex = WaveData.S02_W01;
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
var _waveIndex = WaveData.S02_W02;
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
var _waveIndex = WaveData.S02_W03;
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
var _waveIndex = WaveData.S03_W01;
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
var _waveIndex = WaveData.S03_W02;
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
var _waveIndex = WaveData.S03_W03;
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
var _waveIndex = WaveData.S03_W04;
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
var _waveIndex = WaveData.S03_W05;
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
var _waveIndex = WaveData.S03_W06;
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
var _waveIndex = WaveData.S04_W01;
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
var _waveIndex = WaveData.S04_W02;
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
var _waveIndex = WaveData.S04_W03;
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