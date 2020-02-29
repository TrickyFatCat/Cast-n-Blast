if (collisionEnable)
{
	if (!isInvulnerable)
	{
		DecreaseHitPoints(other.damage);
	}

	if (!other.isPenentrating)
	{
		instance_destroy(other);
	}
}