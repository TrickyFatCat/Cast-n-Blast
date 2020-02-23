/// @description RespondOnProjectileCollision

if (!isInvulnerable && other.collisionEnable)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

if (collisionEnable)
{
	instance_destroy(other);
}