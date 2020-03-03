/// @description ProcessDestruction

destructionDelayTimer += global.TimeFactor;

var _timeIsOver = CheckTimer(destructionDelayTimer, destructionDelayTime);

if (_timeIsOver)
{
	instance_destroy();
}