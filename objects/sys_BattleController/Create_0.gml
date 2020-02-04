battleStartTime = SetTime(5);
battleStartTimer = 0;
global.PlayTime = 0;

battlePauseTime = SetTime(30);
battlePauseTimer = 0;

roundTime = SetTime(90);

enum BattleState
{
	Inactive,
	Start,
	Active,
	Paused,
	End
}

global.BattleState = BattleState.Inactive;

difficultyIncreaseTime[0] = SetTime(10);
difficultyIncreaseTime[1] = SetTime(20);
difficultyIncreaseTime[2] = SetTime(30);
difficultyIncreaseTime[3] = SetTime(40);
difficultyIncreaseTime[4] = SetTime(50);
difficultyIncreaseTime[5] = SetTime(60);
difficultyIncreaseTime[6] = SetTime(70);
difficultyIncreaseTime[7] = SetTime(80);
difficultyIncreaseTime[8] = SetTime(90);
difficultyIncreaseTime[9] = SetTime(100);
difficultyIncreaseTime[10] = SetTime(110);

global.DifficultyLevel = 0;
global.Score = 0;
global.Round = 1;

soundTimer = SetTime(1);