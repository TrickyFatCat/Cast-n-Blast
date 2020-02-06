/// @description StateMoveController

var _pathExists = mp_grid_path(global.PathGrid, path, x, y, targetX, targetY, true);
		
if (_pathExists)
{
	currentState = EnemyState.Action;
}
else
{
	currentState = EnemyState.TargetSearch;
}