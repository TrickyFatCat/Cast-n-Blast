/// @description StateTargetSearchController

if (isStaying)
{
	return;
}

var _cellSize = global.PathCellWidth;
var _pointX;
var _pointY;

var _distanceToPlayer = point_distance(playerX, playerY, x, y);

if (_distanceToPlayer > attackRadiusMax)
{
	currentTarget = TargetToSearch.Player;
}
else if (_distanceToPlayer < attackRadiusMax || isWaiting)
{
	currentTarget = TargetToSearch.Self;
}

switch (currentTarget)
{
	case TargetToSearch.Self:
		var _targetDirection = CalculateDirectionToPlayer() + choose(-90, 90);
		_pointX = playerX + lengthdir_x(changePositionRadius, _targetDirection);
		_pointY = playerY + lengthdir_y(changePositionRadius, _targetDirection);
	break;
	
	case TargetToSearch.Player:
		var _targetDirection = point_distance(playerX, playerY, x, y);
		_pointX = playerX + lengthdir_x(attackRadiusMin, _targetDirection);
		_pointY = playerY + lengthdir_y(attackRadiusMin, _targetDirection);
	break;
}

targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;
		
currentState = EnemyState.Move;