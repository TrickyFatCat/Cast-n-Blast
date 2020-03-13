global.Round++;

switch (global.Round)
{
	case 3:
		SetActiveWaves(WaveData.S02_W01, WaveData.S02_W02, WaveData.S02_W03);
		SetSpawnNumber(2);
		SetSpawnPause(3);
		SetRoundTime(40);
	break;
	
	case 6:
		SetActiveWaves(WaveData.S03_W01, WaveData.S03_W02, WaveData.S03_W03);
		permanentTilesEnabled = true;
		SetTilesNumber(10,0);
	break;
	
	case 9:
		SetActiveWaves(WaveData.S04_W01, WaveData.S04_W02, WaveData.S04_W03);
		SetRoundTime(50)
		SetTilesNumber(15, 0);
	break;
	 
	case 12:
		SetActiveWaves(WaveData.S04_W01, WaveData.S04_W02, WaveData.S04_W03);
		permanentTilesEnabled = false;
		temporaryTilesEnabled = true;
		SetTilesNumber(15, 5);
	break;
	
	case 15:
		SetActiveWaves(WaveData.S05_W01, WaveData.S05_W02, WaveData.S05_W03);
		SetRoundTime(60);
		SetTilesNumber(15, 10);
	break;
	
	case 18:
		SetActiveWaves(WaveData.S06_W01, WaveData.S06_W02, WaveData.S06_W03);
		permanentTilesEnabled = true;
		temporaryTilesEnabled = true;
		SetTilesNumber(5, 5);
	break;

	case 21:
		SetActiveWaves(WaveData.S07_W01, WaveData.S07_W02, WaveData.S07_W03);
		SetSpawnNumber(3);
		SetSpawnPause(4);
	break;
	
	case 24:
		randomiseTiles = true;
	break;
	
	case 27:
		SetActiveWaves(WaveData.S04_W01, WaveData.S04_W02, WaveData.S04_W03, WaveData.S05_W01, WaveData.S05_W02, WaveData.S05_W03, WaveData.S06_W01, WaveData.S06_W02, WaveData.S06_W03, WaveData.S07_W01, WaveData.S07_W02, WaveData.S07_W03);
	break;
	
	case 30:
		SetSpawnPause(3);
	break;
	
	case 40:
		SetRoundTime(90);
	break;
	
	case 50:
		SetSpawnPause(2.5);
	break;
	
	case 60:
		SetSpawnPause(2);
	break;
}

var _activeWave = GetRandomWave();
SetWave(_activeWave);

if (randomiseTiles)
{
	permanentTilesEnabled = choose(true, false);
	temporaryTilesEnabled = choose(true, false);
	var _permanentNumber = irandom_range(5, 15);
	var _temporaryNumber = irandom_range(5, 15);
	SetTilesNumber(_permanentNumber, _temporaryNumber);
}