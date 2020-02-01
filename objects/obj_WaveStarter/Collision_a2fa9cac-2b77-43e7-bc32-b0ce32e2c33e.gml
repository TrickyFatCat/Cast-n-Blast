if (sys_GameManager.keyInteract)
{
	global.BattleState = BattleState.Start;
	instance_deactivate_object(global.WaveStarter);
}