/// @description StateTargetSearchController

var _cellSize = global.PathCellWidth;
var _pointX;
var _pointY;

var _targetDirection = random(360);
_pointX = playerX + lengthdir_x(attackRadiusMin, _targetDirection);
_pointY = playerY + lengthdir_y(attackRadiusMin, _targetDirection);

targetX = (_pointX / _cellSize) * _cellSize + _cellSize / 2;
targetY = (_pointY / _cellSize) * _cellSize + _cellSize / 2;
		
currentState = EnemyState.Move;