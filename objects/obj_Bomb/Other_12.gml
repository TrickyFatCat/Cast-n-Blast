/// @description ProcessIdle

lifespanTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(lifespanTimer, lifespanTime);
EnableFlash(c_red, 1);
		
if (_timeIsOver)
{
	currentState = BombState.Destruction;
}