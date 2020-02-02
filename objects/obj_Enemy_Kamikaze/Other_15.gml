/// @description Action

// Inherit the parent event
event_inherited();

var _distanceToPlayer = point_distance(x, y, playerX, playerY);

if (_distanceToPlayer > attackRadiusMin)
{
	currentState = EnemyState.Move;
}
else
{
	currentState = EnemyState.Trancendence;
}