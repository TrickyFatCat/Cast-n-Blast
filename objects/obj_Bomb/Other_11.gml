/// @description ProcessActivation

activationTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(activationTimer, activationTime);
		
if (_timeIsOver)
{
	isInvulnerable = false;
	collisionEnable = true;
	drawColour = c_red;
	currentState = BombState.Idle;
}