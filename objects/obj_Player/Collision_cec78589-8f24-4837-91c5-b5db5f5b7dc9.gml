/// @description RespondOnLaserCollision

//Parameters
var _flashPower = 1;

//Sequence
if (!isInvulnerable) && (other.dealingDamage)
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
	
	ChekPlayerHP;
}