/// @description RespondOnProjectileCollision

if (!isInvulnerable && other.collisionEnable && other.object_index != obj_Bomb)
{
	DealDamageToPlayer(other.damage);
	CheckPlayerHP;
}

if (collisionEnable && other.collisionEnable && other.object_index != obj_Bomb)
{
	instance_destroy(other);
}
else if (other.object_index == obj_Bomb)
{
	if (other.currentState > BombState.Drop)
	{
		instance_destroy(other);
	}
}