/// @description StateIdleController

isInvulnerable = false;

idleTimer += global.TimeFactor;

var _timeIsOver = CheckTimer(idleTimer, idleTime);

if (_timeIsOver)
{
	currentState = EnemyState.TargetSearch;
}