/// @description StateMoveController

var _pathExists = mp_grid_path(global.PathGrid, path, x, y, targetX, targetY, true);
		
if (_pathExists)
{
	path_start(path, pathSpeed, path_action_stop, false);
}
else
{
	currentState = EnemyState.TargetSearch;
}
		
if (path_get_length(path) > 0)
{
	pathSpeed = global.TimeFactor * velocity + (0.5 * sqr(global.TimeFactor) * acceleration);
	velocity = min(velocity + acceleration * global.TimeFactor, maxVelocity);
}
else
{
	pathSpeed = 0;
	velocity = 0;
	currentState = EnemyState.Action;
}