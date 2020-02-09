var _isMaxed = PerksAreMaxed();

for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	var _target = global.InteractiveObjects[| i];
	if (!_isMaxed)
	{
		if (_target.object_index == obj_PerkActivator)
		{
			instance_create_layer(_target.x, _target.y + 16, layer, vfx_UpgradePointsSwitch);
			instance_deactivate_object(_target.triggerVisualiser);
			instance_deactivate_object(_target);
		}
	}
	else if (_target.object_index == obj_WaveStarter)
	{
		instance_deactivate_object(_target.triggerVisualiser);
		instance_deactivate_object(_target);
		instance_create_layer(_target.x, _target.y + 16, layer, vfx_UpgradePointsSwitch);
	}
	else if (_target.object_index == obj_PerkActivator && instance_exists(_target))
	{
		instance_deactivate_object(_target.triggerVisualiser);
		instance_deactivate_object(_target);
	}	
}