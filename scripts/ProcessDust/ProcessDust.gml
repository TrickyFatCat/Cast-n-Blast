delayTimer += global.TimeFactor;
var _timeIsOver = CheckTimer(delayTimer, delayTime);

if (_timeIsOver)
{
	var _step = random_range(0.001, 0.1);
	drawScaleX = ApproachTimeFactor(drawScaleX, 0, _step);
	drawScaleY = drawScaleX;
	z += velocityZ;
	
	if (isMoving)
	{
		MoveObject(false);
		
		velocity = CalculateDeceleratedVelocity(direction, velocity, groundFriction);

		if (velocity <= 0)
		{
			instance_destroy();
		}
	}
	else if (drawScaleX == 0)
	{
		instance_destroy();
	}
}