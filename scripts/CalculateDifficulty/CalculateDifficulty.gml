global.Round++;

switch (global.Round)
{
	case 2:
		SetSpawnPause(1.75);
		SetActiveWaves(WaveData.R02W01, WaveData.R02W02, WaveData.R02W03);
	break;
	
	case 4:
		SetSpawnPause(1.5);
		SetRoundTime(40);
	break;
	
	case 6:
		SetSpawnNumber(2);
		permanentTilesEnabled = true;
		SetActiveWaves(WaveData.R06W01, WaveData.R06W02, WaveData.R06W03);
	break;
	
	case 8:
		SetTilesNumber(15,0);
	break;
	
	case 10:
		SetSpawnPause(1.25);
		SetRoundTime(50)
		SetTilesNumber(20, 15);
	break;
	
	case 12:
		SetSpawnNumber(3);
		temporaryTilesEnabled = true;
		SetActiveWaves(WaveData.R12W01, WaveData.R12W02, WaveData.R12W03);
	break;
	
	case 14:
		SetTilesNumber(25, 20);
	break;
	
	case 16:
		SetRoundTime(60);
		SetTilesNumber(25, 25);
	break;
	
	case 18:
		SetSpawnNumber(4);
	break;
	
	case 20:
		SetSpawnPause(1);
		SetRoundTime(90);
		SetActiveWaves(WaveData.R20W01, WaveData.R20W02, WaveData.R20W03);
	break;
}

var _randomWaveindex = irandom(ds_list_size(activeWaves) - 1);
var _activeWave = activeWaves[| _randomWaveindex];
SetWave(_activeWave);