/// @description ProcessActivation

activationTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(activationTimer, activationTime);
		
if (_timeIsOver)
{
	isInvulnerable = false;
	drawColour = c_red;
	currentState = MineState.Idle;
}