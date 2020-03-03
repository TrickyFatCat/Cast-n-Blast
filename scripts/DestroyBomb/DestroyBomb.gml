/// @param targetMine

var _targetMine = argument0;

if (_targetMine.currentState != BombState.Destruction)
{
	_targetMine.currentState = BombState.Destruction;
}