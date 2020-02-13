if (!isInvulnerable && other.isActive)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}