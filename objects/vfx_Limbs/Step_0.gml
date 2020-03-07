//kMoveObject(false);

//velocity = CalculateDeceleratedVelocity(directionCurrent, velocity, groundFriction);

//CheckBouncingCollision(obj_Wall);

//if (isBounced)
//{
//	directionCurrent = point_direction(0, 0, velocityX, velocityY);
//	isBounced = !isBounced;
//}

//z = max(z + velocityZ * global.TimeFactor, 0);
//velocityZ -= gravityZ * global.TimeFactor;

//if (velocity <= 0)
//{
//	var _step = CalculateStep(lifeSpanTime);
//	lifeProgress = ApproachTimeFactor(lifeProgress, 1, _step);
//	drawAlpha = LerpTimeFactor(1, 0, lifeProgress * lifeProgress);
	
//	if (drawAlpha == 0)
//	{
//		instance_destroy();
//	}
//}

//if (z > 0)
//{
//	drawAngle += rotationSpeed;
//}
//else if (velocity > 0)
//{
//	//SpawnSplatterEffect(x, y, vfx_Splatter, 5, 2);
//	for (var i = 0; i < 1; i++)
//	{
//		var _splatter = instance_create_layer(x, y, layer, vfx_Splatter);
	
//		with (_splatter)
//		{
//			velocity = random_range(0.4, 1);
//			direction = other.directionCurrent - 180 + irandom_range(-90, 90);
//		}
//	}
//}