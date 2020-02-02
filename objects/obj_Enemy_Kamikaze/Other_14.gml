/// @description Movement

var _cellSize = global.PathCellWidth;
var _targetDirection = irandom_range(0, 359);
var _pointX;
var _pointY;

var _distanceToPlayer = point_distance(x, y, playerX, playerY);

if (_distanceToPlayer > attackRadiusMax)
{

	_pointX = playerX + lengthdir_x(attackRadiusMin, _targetDirection);
	_pointY = playerY + lengthdir_y(attackRadiusMin, _targetDirection);

	targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
	targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;

	var _pathExists = mp_grid_path(global.PathGrid, path, x, y, targetX, targetY, true);
		
	if (_pathExists)
	{
		path_start(path, pathSpeed, path_action_stop, false);
	}
		
	pathSpeed = global.TimeFactor * velocity + (0.5 * sqr(global.TimeFactor) * acceleration);
	velocity = min(velocity + acceleration * global.TimeFactor, maxVelocity);
}
else
{
	path_end();
	pathSpeed = 0;
	velocity = 0;
	currentState = EnemyState.Trancendence;
}

if (hitPoints <= 0)
{
	path_end();
	pathSpeed = 0;
	velocity = 0;
	currentState = EnemyState.Trancendence;
}