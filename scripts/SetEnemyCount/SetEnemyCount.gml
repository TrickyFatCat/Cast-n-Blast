/// @param enemy
/// @param count

var _enemy = argument0;
var _count = argument1;


for (var i = 0; i < array_height_2d(global.EnemyCountData); i++)
{
	if (_enemy == global.EnemyCountData[i, 0])
	{
		global.EnemyCountData[i, 1] = _count;
		break;
	}
}