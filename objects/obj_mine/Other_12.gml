/// @description ProcessIdle

lifespanTimer += global.TimeFactor;
		
var _timeIsOver = CheckTimer(lifespanTimer, lifespanTime);
		
if (_timeIsOver)
{
	instance_destroy();
}

ProcessEffect;