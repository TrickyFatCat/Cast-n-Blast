/// @description RespondOnProjectileCollision

//Params
var _flashColour = c_red;
var _flashPower = 1;

//Sequence

if (!isInvulnerable)
{
	CalculateDamageToPlayer(other.damage);
	ChekPlayerHP;
}

instance_destroy(other);