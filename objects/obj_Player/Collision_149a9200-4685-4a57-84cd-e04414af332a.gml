/// @description RespondOnProjectileCollision

//Params
var _flashColour = c_red;
var _flashPower = 1;

//Sequence

if (!isInvulnerable)
{
	if (shieldIsActive)
	{
		DecreaseEnergy(round(other.damage * damageReductionFactor));
	}
	else
	{
		DealDamageToParts(other.damage);
	}
	EnableFlash(_flashColour, _flashPower);
	//PlaySound(sfx_impact);
	ChekPlayerHP;
}

instance_destroy(other);