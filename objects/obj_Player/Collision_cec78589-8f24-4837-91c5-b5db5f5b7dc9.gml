/// @description RespondOnLaserCollision

if (!isInvulnerable) && (other.dealingDamage)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}