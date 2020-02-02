global.BattleState = BattleState.Start;
global.Round++;

if (global.Round == 2)
{
	SetWave(WaveData.Test01);
}

for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	instance_deactivate_object(global.InteractiveObjects[| i]);
}