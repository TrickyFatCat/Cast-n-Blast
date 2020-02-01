/// @description StateTargetSearchController

var _cellSize = global.PathCellWidth;
var _pointX;
var _pointY;

var _distanceToPlayer = point_distance(x, y, playerX, playerY);

if (_distanceToPlayer > attackRadiusMax)
{
	currentTarget = TargetToSearch.Player;
}
else
{
	currentTarget = TargetToSearch.Self;
}

switch (currentTarget)
{
	case TargetToSearch.Self:
		var _targetDirection = irandom_range(0.0, 359.0);
		_pointX = x + lengthdir_x(changePositionRadius, _targetDirection);
		_pointY = y + lengthdir_y(changePositionRadius, _targetDirection);
	break;
	
	case TargetToSearch.Player:
		var _targetDirection = point_distance(playerX, playerY, x, y);
		_pointX = playerX + lengthdir_x(attackRadiusMin, _targetDirection);
		_pointY = playerY + lengthdir_y(attackRadiusMin, _targetDirection);
	break;
}

targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;
		
currentState = EntityState.Move;