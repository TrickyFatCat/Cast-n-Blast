/// @description RespondOnProjectileCollision

if (!isInvulnerable)
{
	CalculateDamageToPlayer(other.damage);
	ChekPlayerHP;
}

instance_destroy(other);