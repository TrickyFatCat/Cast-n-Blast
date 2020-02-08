/// @description RespondOnProjectileCollision

if (!isInvulnerable)
{
	DealDamageToPlayer(other.damage);
	ChekPlayerHP;
}

instance_destroy(other);