/// @description RespondOnLaserCollision

if (!isInvulnerable) && (other.dealingDamage)
{
	CalculateDamageToPlayer(other.damage);
	ChekPlayerHP;
}