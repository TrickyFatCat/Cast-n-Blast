global.BattleState = BattleState.Start;
for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	instance_deactivate_object(global.InteractiveObjects[| i]);
}