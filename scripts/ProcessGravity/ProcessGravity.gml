if (!GameIsPaused())
{
	if (z > 0)
	{
		velocityZ -= gravityZ;
		z += velocityZ;
	
		if (velocityZ > 0 && (!isJumping))
		{
			velocityZ = 0;
		}
	}
	else
	{
		z = 0;
	
		if (isJumping)
		{
			velocityZ = jumpVelocity;
			z = velocityZ;
		}
		else
		{
			velocityZ = 0;
		}
	}
}