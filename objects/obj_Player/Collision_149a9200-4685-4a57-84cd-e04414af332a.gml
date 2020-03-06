/// @description RespondOnProjectileCollision

if (!isInvulnerable && other.collisionEnable)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

if (collisionEnable && other.collisionEnable && other.object_index != obj_Bomb)
{
	instance_destroy(other);
}
else if (other.object_index = obj_Bomb && other.currentState == BombState.Idle)
{
	instance_destroy(other);
}