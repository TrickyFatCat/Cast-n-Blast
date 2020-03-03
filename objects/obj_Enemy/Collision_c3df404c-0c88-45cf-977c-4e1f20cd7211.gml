if (collisionEnable)
{
	if (!isInvulnerable && other.object_index != obj_PlayerMeteor)
	{
		DecreaseHitPoints(other.damage);
	}

	if (!other.isPenentrating)
	{
		instance_destroy(other);
	}
}