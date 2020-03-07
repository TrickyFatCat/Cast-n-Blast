global.Round++;

switch (global.Round)
{
	case 2:
		SetActiveWaves(WaveData.R02W01, WaveData.R02W02, WaveData.R02W03);
	break;
	
	case 4:
		SetRoundTime(30);
	break;
	
	case 6:
		permanentTilesEnabled = true;
		SetActiveWaves(WaveData.R06W01, WaveData.R06W02, WaveData.R06W03);
	break;
	
	case 8:
		//SetSpawnPause(1.5);
		SetSpawnNumber(2);
		SetTilesNumber(15,0);
	break;
	
	case 10:
		SetRoundTime(40)
		SetTilesNumber(20, 15);
	break;
	
	case 12:
		temporaryTilesEnabled = true;
		SetActiveWaves(WaveData.R12W01, WaveData.R12W02, WaveData.R12W03);
	break;
	
	case 14:
		SetTilesNumber(25, 20);
	break;
	
	case 16:
		SetSpawnNumber(3);
		SetRoundTime(50);
		SetTilesNumber(25, 25);
	break;
	
	case 18:
		SetSpawnPause(1.25);
	break;
	
	case 20:
		SetRoundTime(60);
		SetActiveWaves(WaveData.R20W01, WaveData.R20W02, WaveData.R20W03);
	break;
}

var _activeWave = GetRandomWave();
SetWave(_activeWave);