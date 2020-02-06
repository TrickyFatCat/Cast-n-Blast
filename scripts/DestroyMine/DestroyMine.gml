/// @param targetMine

var _targetMine = argument0;

if (_targetMine.currentState != MineState.Destruction)
{
	_targetMine.currentState = MineState.Destruction;
}