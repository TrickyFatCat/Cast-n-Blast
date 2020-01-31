image_speed = imageSpeedDefault * global.TimeFactor; //Change image speed with time factor

DecreaseFlashPower();

// Gravity logic
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

// Set shadow alpha
SetJumpShadowAlpha();