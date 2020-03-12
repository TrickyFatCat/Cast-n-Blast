global.Round++;

switch (global.Round)
{
	case 2:
		SetActiveWaves(WaveData.S02_W01, WaveData.S02_W02, WaveData.S02_W03);
	break;
	
	case 4:
		SetRoundTime(30);
	break;
	
	case 6:
		permanentTilesEnabled = true;
		SetActiveWaves(WaveData.S03_W01, WaveData.S03_W02, WaveData.S03_W03);
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
		SetActiveWaves(WaveData.S03_W04, WaveData.S03_W05, WaveData.S03_W06);
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
		SetActiveWaves(WaveData.S04_W01, WaveData.S04_W02, WaveData.S04_W03);
	break;
}

var _activeWave = GetRandomWave();
SetWave(_activeWave);