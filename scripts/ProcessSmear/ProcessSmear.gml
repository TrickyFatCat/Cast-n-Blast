lifeSpanTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(lifeSpanTimer, lifeSpanTime);

if (_timeIsOver)
{
	instance_destroy();
}