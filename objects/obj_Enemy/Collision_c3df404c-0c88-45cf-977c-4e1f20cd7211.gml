/// @description Insert description here

if (collisionEnable)
{
	if (!isInvulnerable)
	{
		DecreaseHitPoints(other.damage);
	}

	instance_destroy(other);
}