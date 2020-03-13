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
	//------//
	S04_W01,
	S04_W02,
	S04_W03,
	//------//
	S05_W01,
	S05_W02,
	S05_W03,
	//------//
	S06_W01,
	S06_W02,
	S06_W03,
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

#region S01_W01
var _waveIndex = WaveData.S01_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		4, 2);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			0, 0);
SetWaveDataCrystal(_wave,		3, 1);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S01_W02
var _waveIndex = WaveData.S01_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			3, 1);
SetWaveDataCrystal(_wave,		2, 2);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S01_W03
var _waveIndex = WaveData.S01_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 2);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			3, 1);
SetWaveDataCrystal(_wave,		0, 3);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 02

#region S02_W01
var _waveIndex = WaveData.S02_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			0, 0);
SetWaveDataCrystal(_wave,		2, 1);
SetWaveDataBomber(_wave,		3, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S02_W02
var _waveIndex = WaveData.S02_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			8, 1);
SetWaveDataCrystal(_wave,		2, 1);
SetWaveDataBomber(_wave,		3, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S02_W03
var _waveIndex = WaveData.S02_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 2);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			5, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		3, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 03

#region S03_W01
var _waveIndex = WaveData.S03_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			0, 0);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S03_W02
var _waveIndex = WaveData.S03_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S03_W03
var _waveIndex = WaveData.S03_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		4, 2);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			3, 0);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 04

#region S04_W01
var _waveIndex = WaveData.S04_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			5, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	2, 1);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S04_W02
var _waveIndex = WaveData.S04_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			5, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	2, 1);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S04_W03
var _waveIndex = WaveData.S04_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		1, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			5, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	2, 1);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 05

#region S05_W01
var _waveIndex = WaveData.S05_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	3, 1);
SetWaveDataShaman(_wave,		2, 1);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S05_W02
var _waveIndex = WaveData.S05_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		3, 1);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	0, 0);
SetWaveDataShaman(_wave,		2, 1);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S05_W03
var _waveIndex = WaveData.S05_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			0, 1);
SetWaveDataCrystal(_wave,		3, 1);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	3, 1);
SetWaveDataShaman(_wave,		2, 1);
SetWaveDataEvolvedDemon(_wave,	0, 0);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 06

#region S06_W01
var _waveIndex = WaveData.S06_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		3, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 1);
SetWaveDataShaman(_wave,		3, 1);
SetWaveDataEvolvedDemon(_wave,	3, 1);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S06_W02
var _waveIndex = WaveData.S06_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	3, 1);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	3, 1);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S06_W03
var _waveIndex = WaveData.S06_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			0, 0);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	4, 1);
SetWaveDataShaman(_wave,		3, 1);
SetWaveDataEvolvedDemon(_wave,	3, 1);
SetWaveDataNinja(_wave,			0, 0);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion

#region Wave Set 07

#region S07_W01
var _waveIndex = WaveData.S07_W01;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		0, 0);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		3, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	0, 1);
SetWaveDataShaman(_wave,		3, 1);
SetWaveDataEvolvedDemon(_wave,	3, 1);
SetWaveDataNinja(_wave,			2, 1);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S06_W02
var _waveIndex = WaveData.S07_W02;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		5, 1);
SetWaveDataMage(_wave,			0, 0);
SetWaveDataEvolvedImp(_wave,	3, 1);
SetWaveDataShaman(_wave,		0, 0);
SetWaveDataEvolvedDemon(_wave,	3, 1);
SetWaveDataNinja(_wave,			2, 1);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#region S06_W03
var _waveIndex = WaveData.S07_W03;
var _waveWeight = 5;
var _enemyNumber = 10;
var _wave = CreateDataMap(_enemyNumber);

SetWaveDataKamikaze(_wave,		3, 1);
SetWaveDataImp(_wave,			25, 1);
SetWaveDataDemon(_wave,			10, 1);
SetWaveDataCrystal(_wave,		0, 0);
SetWaveDataBomber(_wave,		0, 0);
SetWaveDataMage(_wave,			2, 1);
SetWaveDataEvolvedImp(_wave,	4, 1);
SetWaveDataShaman(_wave,		3, 1);
SetWaveDataEvolvedDemon(_wave,	0, 1);
SetWaveDataNinja(_wave,			2, 1);

SetWaveData(_waveIndex, _wave, _waveWeight);
#endregion

#endregion
