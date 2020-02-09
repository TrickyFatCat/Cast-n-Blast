var _isMaxed = PerksAreMaxed();

for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	var _target = global.InteractiveObjects[| i];
	if (!_isMaxed)
	{
		if (_target.object_index != obj_WaveStarter)
		{
			instance_activate_object(_target.triggerVisualiser);
			instance_activate_object(_target);
			_target.perkId = ChooseRandomPerk();
			instance_create_layer(_target.x, _target.y, layer, vfx_UpgradePointsSwitch);
		}
	}
	else if (_target.object_index != obj_PerkActivator)
	{
		instance_activate_object(_target.triggerVisualiser);
		instance_activate_object(_target);
		instance_create_layer(_target.x, _target.y, layer, vfx_UpgradePointsSwitch);
	}
}