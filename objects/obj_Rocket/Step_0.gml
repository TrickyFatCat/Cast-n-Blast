freeFlightTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(freeFlightTimer, freeFlightTime);
var _directionToPlayer = CalculateDirectionToPlayer();

if (_timeIsOver && _directionToPlayer > minDirection)
{
	acceleration = 0.02;
	groundFriction = 0;
	var _deltaDirection = CalculateDeltaDirection(global.Player, directionCurrent, rotationSpeed);
	directionCurrent -= _deltaDirection;
}