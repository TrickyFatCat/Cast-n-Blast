
for (var i = 0; i < ds_list_size(global.InteractiveObjects); i++)
{
	var _target = global.InteractiveObjects[| i];
	instance_activate_object(_target);
}