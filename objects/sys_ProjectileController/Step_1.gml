if (global.TimeFactor == 0)
{
	return;
}

var _number = instance_number(obj_Projectile);

if (_number > 0)
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(obj_Projectile, i);
		with (_effect)
		{
			ProcessProjectileBeginStep();
		}
	}
}