MoveObject(false);

velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);

CheckBouncingCollision(obj_Wall);

if (isBounced)
{
	directionCurrent = point_direction(0, 0, velocityX, velocityY);
	isBounced = !isBounced;
}

z = z + velocityZ * global.TimeFactor;
velocityZ -= gravityZ * global.TimeFactor;

if (z + velocityZ < 0)
{
	z = 0;
	
	if (isBounceableZ)
	{
		velocityZ *= -0.8;
	}
}

if (velocity <= 0)
{
	//var _step = CalculateStep(lifeSpanTime);
	//lifeProgress = ApproachTimeFactor(lifeProgress, 1, _step);
	//drawAlpha = LerpTimeFactor(1, 0, lifeProgress * lifeProgress);
	
	//if (lifeProgress == 1)
	//{
	//	instance_destroy();
	//}
	instance_destroy();
}

if (z > 0)
{
	drawAngle += rotationSpeed;
}
else if (velocity > 0)
{
	if (isBounceableZ)
	{
		var _number = 20;
		var _velocity = random_range(1, 2);
	}
	else
	{
		var _number = 1;
		var _velocity = random_range(0.4, 1);
	}
	
	for (var i = 0; i < _number; i++)
	{
		var _splatter = instance_create_layer(x, y, layer, vfx_Splatter);
		
		if (isBounceableZ)
		{
			var _direction = random(360);
		}
		else
		{
			var _direction = directionCurrent - 180 + irandom_range(-90, 90);
		}
		
		with (_splatter)
		{
			velocity = _velocity;
			direction = _direction;
		}
	}
}