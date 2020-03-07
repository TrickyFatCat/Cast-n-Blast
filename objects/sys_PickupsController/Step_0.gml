var if (global.TimeFactor == 0)
{
	return;
}

var _number = instance_number(obj_Pickup);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(obj_Pickup, i);
		with (_effect)
		{
			ProcessPickup();
		}
	}
}