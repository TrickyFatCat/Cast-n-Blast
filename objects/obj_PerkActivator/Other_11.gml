/// @description RestartWave

global.BattleState = BattleState.Start;
DeactivateInteractiveObjects();
with (sys_BattleController)
{
	CalculateDifficulty();
}
ChangeSpawnSettings();