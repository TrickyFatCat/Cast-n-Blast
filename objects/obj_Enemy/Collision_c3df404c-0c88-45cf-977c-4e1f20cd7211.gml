/// @description Insert description here

if (collisionEnable)
{
	if (!isInvulnerable)
	{
		DealDamage(other.damage);
	}

	instance_destroy(other);
}