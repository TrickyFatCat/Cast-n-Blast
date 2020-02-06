/// @description ProcessActivation

activationTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(activationTimer, activationTime);
		
if (_timeIsOver)
{
	isInvulnerable = false;
	currentState = MineState.Idle;
}