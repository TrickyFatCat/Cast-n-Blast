/// @description RespondOnProjectileCollision

//Params
var _flashColour = c_red;
var _flashPower = 1;

//Sequence
if (collisionEnable)
{
	if (!isInvulnerable)
	{
		DealDamage(other.damage);
		EnableFlash(_flashColour, _flashPower);
		//PlaySound(sfx_impact);
		ChekPlayerHP;
	}

	instance_destroy(other);
}