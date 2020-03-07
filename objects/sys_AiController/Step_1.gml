var _number = instance_number(obj_Enemy);

if (_number > 0 && !GameIsPaused())
{
	for (var i = 0; i < _number; i++)
	{
		var _effect = instance_find(obj_Enemy, i);
		with (_effect)
		{
			ProcessEnemyBeginStep();
		}
	}
}