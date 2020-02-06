/// @description ProcessIdle

lifespanTimer += global.TimeFactor;
		
var _timeIsOver = CheckTimer(lifespanTimer, lifespanTime);
		
if (_timeIsOver)
{
	currentState = MineState.Destruction;
}

ProcessEffect;