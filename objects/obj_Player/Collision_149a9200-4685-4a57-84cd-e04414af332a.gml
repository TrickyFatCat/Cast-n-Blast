/// @description RespondOnProjectileCollision

if (!isInvulnerable && other.collisionEnable)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

if (collisionEnable && other.collisionEnable)
{
	instance_destroy(other);
}