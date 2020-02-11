/// @description RespondOnProjectileCollision

if (!isInvulnerable)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

instance_destroy(other);