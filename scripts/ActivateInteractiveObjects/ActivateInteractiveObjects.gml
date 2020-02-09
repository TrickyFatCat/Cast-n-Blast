var _isMaxed = PerksAreMaxed();

for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	var _target = global.InteractiveObjects[| i];
	if (!_isMaxed)
	{
		if (_target.object_index != obj_WaveStarter)
		{
			instance_create_layer(_target.x, _target.y + 16, layer, vfx_UpgradePointsSwitch);
			show_debug_message(i);
			instance_activate_object(_target.triggerVisualiser);
			instance_activate_object(_target);
			_target.perkId = ChooseRandomPerk();
		}
	}
	else if (_target.object_index != obj_PerkActivator)
	{
		instance_activate_object(_target.triggerVisualiser);
		instance_activate_object(_target);
		instance_create_layer(_target.x, _target.y + 16, layer, vfx_UpgradePointsSwitch);
	}
}