/// @param enemy

var _enemy = argument0;

var _number = noone;

for (var i = 0; i < array_height_2d(global.EnemyCountData); i++)
{
	if (_enemy == global.EnemyCountData[i, 0])
	{
		_number = global.EnemyCountData[i, 1];
		break;
	}
}

return _number;