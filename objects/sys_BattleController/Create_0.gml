#macro ActivateTiles event_user(0)
#macro DectivateActiveTiles event_user(1)

battleStartTime = SetTime(5);
battleStartTimer = 0;
global.PlayTime = 0;

battlePauseTime = SetTime(20);
battlePauseTimer = 0;

SetRoundTime(30);

enum BattleState
{
	Inactive,
	Start,
	Active,
	RoundEnd,
	Intermission,
	End
}

global.BattleState = BattleState.Inactive;
global.Score = 0;
global.Round = 1;

soundTimer = SetTime(1);
randomPerk = noone;
destructionTile = noone;
permanentTilesEnabled = false;
temporaryTilesEnabled = false;
randomiseTiles = false;
activeWaves = ds_list_create();
SetActiveWaves(WaveData.S01_W01, WaveData.S01_W02, WaveData.S01_W03);