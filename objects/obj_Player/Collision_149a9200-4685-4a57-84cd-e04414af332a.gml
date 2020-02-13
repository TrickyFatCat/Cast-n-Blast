/// @description RespondOnProjectileCollision

if (!isInvulnerable && other.collisionEnable)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

instance_destroy(other);