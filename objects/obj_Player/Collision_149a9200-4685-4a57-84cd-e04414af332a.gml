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
		EnableFlash(c_blue, _flashPower);
	}
	else
	{
		DealDamageToParts(other.damage);
		ApplyShakeToCamera(false, 1);
		EnableFlash(c_red, _flashPower);
	}
	//PlaySound(sfx_impact);
	ChekPlayerHP;
}

instance_destroy(other);